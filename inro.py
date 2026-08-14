#mysql-connector-python
import mysql.connector

connector = mysql.connector.connect(
    host="localhost",       # server IP or hostname
    user="root",            # MySQL username
    password="root",        # MySQL password
    database="company_2db" # database name
)

if connector.is_connected():
    print("Database connected")

cursor = connector.cursor()
cursor.execute("select * from employee")
rows = cursor.fetchall()
for i in rows:
    print(i)

cursor = connector.cursor()
cursor.execute("select location,count(*) from employee group by location;")
rows = cursor.fetchall()
for i in rows:
    print(i)    

cursor.close()
connector.close()
    