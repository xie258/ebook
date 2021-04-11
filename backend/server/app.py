from flask import Flask
from flask_sqlalchemy import SQLALchemy
from flask_cors import CORS
app = Flask(__name__)
CORS(app, supports_credentials=True)
@app.route('/')
def hello_world():
   return 'Hello World'

if __name__ == '__main__':
   app.run()