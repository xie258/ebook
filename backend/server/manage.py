from database import create_app
from database.ext import db

import os
from flask_script import Manager, Server

from module.login import logins
from module.test import test
from module.classmanage import classmanage
from module.paper import paper
from module.bbs import bbs
from module.ebook import ebook
from database.ext import db
from flask import request, make_response, session

from utils.token import verify_auth_token

app = create_app()
db.init_app(app)
app.register_blueprint(logins)
app.register_blueprint(classmanage)
app.register_blueprint(test)
app.register_blueprint(paper)
app.register_blueprint(bbs)
app.register_blueprint(ebook)


@app.before_request
def is_login():
    try:
        headers = request.headers
        path = request.path
        if path != '/api/login':
            if 'Authorization' not in headers.keys():
                return make_response("please login", 401)

            if 'token' in session.keys():
                print('yes')
                # if not session['token']:
                #     return make_response("please login", 401)
                # if token != session['token']:
                #     return make_response("please login", 401)
            else:
                return make_response("please login", 401)
    except Exception as e:
        print(str(e))
        return make_response(str(e), 401)
    

@app.route('/base')
def base():
    return 'base'

if __name__ == '__main__':
    app.run(debug=True)
