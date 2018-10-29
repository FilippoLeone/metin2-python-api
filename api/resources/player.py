from flask_restful import Resource
from database.playermanager import ToWebSite

class PlayerController(Resource):
    def __init__(self):
        website = ToWebSite()
    def post(self):
        pass
    
    def put(self):
        pass

    def get(self, id):
        self.website.get_player(id)