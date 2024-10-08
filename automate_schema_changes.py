#  Jingxu Lan 8823667 PROG8850
import pymysql

# Database configuration 
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='19980909',
    database='firstdatabase'
)

# Path to the SQL file
script_path = 'update_projects_schema.sql'

# Read the SQL script from the file
with open(script_path, 'r') as file:
    sql_script = file.read()

# Create a cursor object to execute SQL queries
cursor = connection.cursor()

# Execute each SQL statement individually
for statement in sql_script.split(';'):
    if statement.strip():
        cursor.execute(statement)

connection.commit()
cursor.close()
connection.close()

print("executed successfully")



