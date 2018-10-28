from flask_restful import Resource

class Player(Resource):
    def post(self):
        pass
    
    def put(self):
        pass

    def get(self):
        return {'hello': 'player'}