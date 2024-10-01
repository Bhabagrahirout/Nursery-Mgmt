from flask import Flask, render_template,request,redirect,session
import mysql.connector
from flask_session import Session

app = Flask(__name__)
app.secret_key = 'Bhabasession'

# Configure MySQL connection
mydb = mysql.connector.connect(
    host='127.0.0.1',
    user='root',
    passwd='',  # Set your MySQL password here
    database='nur'
)
mycursor = mydb.cursor()
mycursor.execute('SELECT * FROM product')
pdata = mycursor.fetchall()
mycursor.close()

@app.route('/')
def index():
    return render_template('index.html',data=pdata)

@app.route('/product', methods=['GET'])
def product():     # for showing home page only
    if request.method == 'GET':
        if 'user_id' in session:
            user_id = int(session.get('user_id', 0))
            print("user id is ",user_id)
    return render_template('product.html', data=pdata)

# filter product fun
@app.route('/filter_products', methods=['POST'])
def filter_products():
    selected_category = request.form.get('category', '')
    # print(f"Selected Category: {selected_category}")
    
    if selected_category == 'All':
        filtered_data = pdata  # Assuming pdata is the original data fetched from the database
    else:
        # mycursor = mydb.cursor()
        # mycursor.execute('SELECT * FROM product')
        # pdata = mycursor.fetchall()
        # mycursor.close()
        filtered_data = [product for product in pdata if product[5] == selected_category]
        # print(f"Filtered Data: {filtered_data}")
        # print("Original Data:", pdata)
        # print(f"Selected Category: {selected_category}")

    return render_template('product.html', data=filtered_data, category_selected=bool(selected_category))

# Add to cart Function
@app.route('/cart')
def cart():     # for showing home page only
    if 'user_id' in session:
        
        p_id =int(request.args.get('p_id'))
        quantity =int(request.args.get('quantity'))
        user_id = int(session.get('user_id'))
        print("user id and all",user_id,quantity,p_id)
        # when adding to cart
        mycursor = mydb.cursor()
        if quantity!=0:
          try:
           sql = "INSERT INTO cartt VALUES (%s, %s, %s, %s)"
           values = ('', p_id, user_id, quantity)
           mycursor.execute(sql, values)
           print("Data inserted successfully!")
           mydb.commit()
          except mysql.connector.Error as err:
              print(f"Error: {err}")
              print("Failed to insert data. Please check for errors.")
         
          finally:
              mycursor.close()
        else:  # when a user click to see their cart all product
              mycursor = mydb.cursor()
              query="SELECT product.* FROM cartt join product on cartt.p_id=product.p_id where cartt.user_id=%s" 
              value=(user_id,)
              mycursor.execute(query,value)
              cdata = mycursor.fetchall()
              print("all data are",cdata)
              mycursor.close()
              return render_template('allcart.html', data=cdata)
        # Fetching data from the cart
        mycursor = mydb.cursor()
        mycursor.execute("SELECT product.* FROM cartt JOIN product ON cartt.p_id = product.p_id WHERE cartt.user_id = %s; ", (user_id,))
        cdata = mycursor.fetchall()
        mycursor.close()
        # print("data is ",cdata)
        return render_template('cart.html', data=cdata)
    else:
        return redirect('/login')

# order item
@app.route('/order',methods=['POST','GET'])
def order():
        user_id = int(session.get('user_id'))
        p_id = int(request.args.get('p_id') )
        print("user id  and p_id  IN order",user_id,p_id)
        mycursor=mydb.cursor()
        qry = "INSERT INTO `order` VALUES (%s, %s, %s);"
        values =('',p_id,user_id)
        mycursor.execute(qry,values)
        mydb.commit()
        mycursor.close()
        return render_template('order.html')
        
# login work
@app.route('/login', methods=['POST', 'GET'])
def login():
    print("method is", request.method)
    if request.method == 'POST':
        Mobile = request.form.get('mobile')
        Password = request.form.get('password')
        mycursor = mydb.cursor()

        try:
            qry = "SELECT * FROM register WHERE mobile=%s AND password=%s"
            values = (Mobile, Password)

            mycursor.execute(qry, values)
            pdata = mycursor.fetchall()
            # print("pdata user name",pdata[0][1])  fetchall() return a list
            if pdata:
                session["name"]=pdata[0][1]
                session["user_id"]=pdata[0][0]
                return redirect('/')
            else:
                return render_template('loginwork/login.html',data={'status':'invaliduser'})
        except mysql.connector.Error as err:
             print(f"Error: {err}")
             return render_template('loginwork/login.html',data={'status':'error'})
        finally:
            mycursor.close()
    return render_template('loginwork/login.html',data={'status':"unsuccess"})

@app.route('/register', methods=['GET','POST'])
# when click <a> tag in login.html GET set
# in register.html through form POST set
def register():
    print("method is", request.method)
    if request.method == 'POST':
        name = request.form.get('name')
        mobile = request.form.get('mobile')
        email = request.form.get('email')
        password = request.form.get('password')
        conpassword = request.form.get('conpassword')
        mycursor = mydb.cursor()
        if password != conpassword:
            return render_template('loginwork/register.html', data={'status': 'passwordmismatch'})
      
        try:
            # Use placeholders in the SQL query to avoid SQL injection
            sql = "INSERT INTO register  VALUES (%s,%s, %s, %s, %s)"
            values = ('',name, mobile, email, password)
            print("SQL Query:", sql % values)
            mycursor.execute(sql, values)
            mydb.commit()
            return render_template('loginwork/register.html', data={'status': 'success'})
        
        except mysql.connector.Error as err:
            print(f"Error: {err}")
            return render_template('loginwork/register.html', data={'status': 'unsuccess'})
        finally:
            mycursor.close()
    return render_template('loginwork/register.html',data={'status':'unsuccess'})

@app.route('/logout')
def logout():
         session.clear()
         return redirect('/')
if __name__ == '__main__':
    print("Starting the Flask application")
    app.run(debug=False)
