import mysql.connector

def connect(database):
    return mysql.connector.connect(
    host="localhost",
    user="home",
    passwd="password",
    db=database
    )