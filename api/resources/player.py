from flask_restful import Resource

class PlayerController(Resource):
    def __init__(self, ApiToWebsite):
        self.website = ApiToWebsite
    def post(self):
        pass
    
    def put(self):
        pass

    def get(self, id):
        return self.website.get_player(id)