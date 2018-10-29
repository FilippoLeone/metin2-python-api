import re
# account.account

# id,login,password,social_id,email,create_time,is_testor,status,securitycode,newsletter,
# empire,name_checked,availDt,mileage,cash,gold_expire,silver_expire,safebox_expire,autoloot_expire,
# fish_mind_expire,marriage_fast_expire,money_drop_rate_expire,total_cash,total_mileage,channel_company

# data = {'id' : 1, 'login' : 'Test', 'password': md5 }


class ApiToWebSite:
	def __init__(self, Database):
		self.db = Database
		print("ToWebSite Initiated.")
	"""
		Account Functions.
	"""
	def get_account(self, param):
		self.db.changeDatabase("account")
		# TODO: sanitize the id field.
		if not re.match(r"[1-9]+", param) and \
			not re.match(r"[a-z1-9]+", param) and \
			not re.match(r"^[A-Za-z0-9\.\+_-]+@[A-Za-z0-9\._-]+\.[a-zA-Z]*$", param):
			print("doesn't match any of the criteria given.")
			return "The ID entered is not correct."

		query = """select `login`,UNIX_TIMESTAMP(`availDt`) as `availDt`, `status`,UNIX_TIMESTAMP(`last_play`) as `last_play` from `account` where `id`={} or login='{}';""".format(int(param), param)
		data = self.db.getRow(query)
		print("Last Query Count: {}".format(self.db.getResultCount()))
		return data
		# 1 == 'admin'

	"""
		Player Functions.
	"""
	def get_player(self, id):
		self.db.changeDatabase("player")
		query = """select `id`, `account_id`, `name`, `job`, `alignment`, `level`, `ht`, `st`, `iq`, `dx`, `last_play`, 
				`exp`, `map_index`, `x`,`y`, `playtime`, `level_step`, 
				`skill_group`, `horse_level` from `player` where `account_id`={}""".format(id)
		data = self.db.getResult(query)
		print("Last Query Count: {}".format(self.db.getResultCount()))
		for character in data:
			print(character)
		return data

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