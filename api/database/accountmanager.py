from database.connection import connect
import re
# account.account

# id,login,password,social_id,email,create_time,is_testor,status,securitycode,newsletter,
# empire,name_checked,availDt,mileage,cash,gold_expire,silver_expire,safebox_expire,autoloot_expire,
# fish_mind_expire,marriage_fast_expire,money_drop_rate_expire,total_cash,total_mileage,channel_company

# data = {'id' : 1, 'login' : 'Test', 'password': md5 }


class ToWebSite:
	def __init__(self):
		self.conn = connect("account")
		print("ToWebSite Initiated.")

	def get_account(self, id):
		# TODO: check if the parameter is an id or login or email.
		if not re.match(r"[1-9]+", id) and \
			not re.match(r"[A-Za-z1-9]+", id) and \
			not re.match(r"^[A-Za-z0-9\.\+_-]+@[A-Za-z0-9\._-]+\.[a-zA-Z]*$", id):
			print("doesn't match any of the criteria given.")
			return "The ID entered is not correct."

		cursor = self.conn.cursor()
		query = """select `login`,`availDt`,`status` from `account` where `id`='{}' or login='{}';""".format(id, id)
		cursor.execute(query)
		data = cursor.fetchone()
		columns = cursor.description
		result = {}
		i = 0
		for value in data:
			result[columns[i][0]] = value
			i += 1
		return result
		# 1 == 'admin'



class ToGameServer:
	def register(self, data):
		print(data)

	def change_status(self, data):
		pass

	def delete(self, data):
		pass

	def apply_premium(data):
		pass

	def password_change(data):
		pass






#print("Connection object: {}".format(connect("account")))