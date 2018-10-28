from flask import Flask,config
from flask_restful import Api
from resources import account, common, player, log

app = Flask(__name__)

api = Api(app)



api.add_resource(account.Account, '/account/<string:id>')


api.add_resource(common.Common, '/common')
api.add_resource(player.Player, '/player')
api.add_resource(log.Log, '/log')


if __name__ == '__main__':
    app.run(debug=True)


