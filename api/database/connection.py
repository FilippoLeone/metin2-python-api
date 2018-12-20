import mysql.connector


class Database:
	def __init__(self):
		self.connection = None
		self.cursor = None

	def __del__(self):
		if self.connection and self.connection.is_connected():
			self.cursor.close()
			self.connection.close()
			print("MySQL connection is closed")

	def connect(self, Host, User, Password, Database):
		# type: (basestring, basestring, basestring, basestring) -> object
		try:
			self.connection = mysql.connector.connect(
				host=Host,
				user=User,
				passwd=Password,
				db=Database
			)
			if self.connection.is_connected():
				self.cursor = self.connection.cursor(dictionary=True)
				db_Info = self.connection.get_server_info()
				print("Connected to MySQL database... MySQL Server version on ", db_Info)
		except Exception as e:
			exit("Error while connecting to MySQL "+str(e))
		return self

	def getCursor(self):
		return self.cursor

	def changeDatabase(self, database):
		# type: (basestring) -> basestring
		self.cursor.execute("""USE {};""".format(database))

	def getResult(self, query, FetchOne=False):
		# type: (basestring, bool) -> dict
		self.cursor.execute(query)

		if FetchOne:
			data = self.cursor.fetchone()
		else:
			data = self.cursor.fetchall()
		return data

	def getRow(self, query):
		# type: (basestring) -> dict
		return self.getResult(query, True)

	def getResultCount(self):
		# type: () -> int
		return self.cursor.rowcount

	def rowExists(self, table, column, value):
		# type: (basestring, basestring, basestring) -> bool
		query = """SELECT {} FROM {} WHERE {} = {}""".format(column, table, column, value)
		self.getResult(query, True)
		return self.lastResultCount > 0
