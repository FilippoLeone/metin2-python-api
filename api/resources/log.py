from flask_restful import Resource

class Log(Resource):
    def post(self):
        pass
    
    def put(self):
        pass

    def get(self):
        return {'hello': 'log'}