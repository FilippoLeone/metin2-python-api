from flask_restful import Resource

class Account(Resource):
    def post(self):
        pass
    
    def put(self, account):
        pass

    def get(self):
        return {'hello': 'world'}