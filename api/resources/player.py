from flask_restful import Resource

class Player(Resource):
    def post(self):
        pass
    
    def put(self):
        pass

    def get(self, id):
        ToWebSite.get_player(id)