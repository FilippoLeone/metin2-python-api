from flask_restful import Resource
from flask import request


class AccountController(Resource):
	def __init__(self, ApiToWebsite):
		self.website = ApiToWebsite
		print("Account Initiated.")

	def get(self, param):
		return self.website.get_account(param)
	def register(self, data):
		#TODO: parse json data.
		accounts_data = {}
		accounts_data[data] = request.form['data']
		#ToGameServer.register(accounts_data[data])



