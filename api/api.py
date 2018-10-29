from flask import Flask
from flask_restful import Api
from resources import account, common, player, log

app = Flask(__name__)

api = Api(app)

# Initializing all the controllers.
# Initialized once.
AccountController = account.AccountController()
PlayerController = player.PlayerController()
@app.route("/account/<string:id>")
def getAccount(id):
	return str(AccountController.get(id))

@app.route("/account/register/<string:data>")
def registerAccount(data):
	return str(AccountController.register(data))

#api.add_resource(account.Account, '/account/<string:id>')


#api.add_resource(common.Common, '/common')
#api.add_resource(player.Player, '/player')
#api.add_resource(log.Log, '/log')


if __name__ == '__main__':
	app.run(debug=True)


