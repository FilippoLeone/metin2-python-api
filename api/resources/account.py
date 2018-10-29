from flask_restful import Resource
from flask import request
from database.accountmanager import ToWebSite,ToGameServer


class AccountController(Resource):
	def __init__(self):
		self.website = ToWebSite()
		print("Account Initialized.")

	def get(self, id):
		return self.website.get_account(id)
	def register(self, data):
		#TODO: parse json data.
		accounts_data = {}
		accounts_data[data] = request.form['data']
		ToGameServer.register(accounts_data[data])



