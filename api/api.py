from flask import Flask
from flask_restful import Api
from resources import account, common, player, log
from database import connection
from database.communicationmanager import ApiToWebSite,ToGameServer

app = Flask(__name__)

api = Api(app)

# Initializing all the classes.
DatabaseModule = connection.Database()
DatabaseModule.connect("localhost", "root", "123", "account")

#initialize Modules
ApiToWebsite = ApiToWebSite(DatabaseModule)

#initialize Controllers
AccountController = account.AccountController(ApiToWebsite)
PlayerController = player.PlayerController(ApiToWebsite)



@app.route("/account/<string:param>")
def getAccount(param):
	return str(AccountController.get(param))
@app.route("/player/<string:id>")
def getPlayer(id):
	return str(PlayerController.get(id))
@app.route("/account/register/<string:data>")
def registerAccount(data):
	return str(AccountController.register(data))

#api.add_resource(account.Account, '/account/<string:id>')


#api.add_resource(common.Common, '/common')
#api.add_resource(player.Player, '/player')
#api.add_resource(log.Log, '/log')


if __name__ == '__main__':
	app.run(debug=True)


