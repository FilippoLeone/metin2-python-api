import mysql.connector

def connect(database):
    return mysql.connector.connect(
    host="localhost",
    user="<user>",
    passwd="<password>",
    db=database
    )
