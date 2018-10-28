from flask_restful import Resource
from flask import request
from database.accountmanager import ToWebSite,ToGameServer


class Account(Resource):  
    def get(self, id):
        ToWebSite.get_account(id)

class RegisterAccount(Resource):  
    def put(self, id):
        accounts_data = {}
        accounts_data[id] = request.form['data']
        ToGameServer.register(accounts_data[id])


