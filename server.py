from flask import Flask, request, make_response
from flask_restful import Resource, Api
from pymongo import MongoClient
from bson.objectid import ObjectId
from utils.mongo_json_encoder import JSONEncoder

# Basic Setup
# We create a flask instance and assign it to the app variable
app = Flask(__name__)
# We establish a connection to our MongoDB service that's running locally
mongo = MongoClient('localhost', 27017)
# We specify a particular database (develop_database) which we'll use to store data.
# We assign it to app.db. Throughout the rest of server.py we'll access
# app.db whenever we need to communicate with the DB.
app.db = mongo.develop_database
# We create an instance of the flask_restful API.
# Later we'll add different endpoints to that API.
# The flask_restful library is not necessary for creating RESTful APIs,
# but it makes our lives a little easier by providing a specific format for defining
# endpoints for the different resources in our app.
api = Api(app)


#Implement REST Resource

class Preset(Resource):

    def post(self):
      #1
      new_myobject = request.json
      #2
      myobject_collection = app.db.myobjects
      #3
      result = myobject_collection.insert_one(new_myobject)
      #4
      myobject = myobject_collection.find_one({"_id": ObjectId(result.inserted_id)})
      #5
      return myobject

    def get(self, myobject_id):
      #6
      myobject_collection = app.db.myobjects
      #7
      myobject = myobject_collection.find_one({"_id": ObjectId(myobject_id)})

      #8
      if myobject is None:
        response = jsonify(data=[])
        response.status_code = 404
        return response
      else:
        return myobject
