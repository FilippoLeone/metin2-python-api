from flask import Flask,config
from flask_restful import Api
from resources import account, common, player, log
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+home://home:password@localhost[:3306]/account'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY'] = 'some-secret-string'

api = Api(app)

api.add_resource(account.Account, '/account')
api.add_resource(common.Common, '/common')
api.add_resource(player.Player, '/player')
api.add_resource(log.Log, '/log')


if __name__ == '__main__':
    app.run(debug=True)