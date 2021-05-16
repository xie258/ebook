from database import create_app

import os
from flask_script import Manager, Server

from module.login import logins
from module.test import test
from module.classmanage import classmanage
from module.paper import paper
from module.bbs import bbs
from module.ebook import ebook
from module.question import question
# from database.ext import db
from flask import request, make_response, session

from utils.token import verify_auth_token

app = create_app()
# db.init_app(app)
app.register_blueprint(logins)
app.register_blueprint(classmanage)
app.register_blueprint(test)
app.register_blueprint(paper)
app.register_blueprint(bbs)
app.register_blueprint(ebook)
app.register_blueprint(question)


@app.before_request
def is_login():
    try:
        headers = request.headers
        path = request.path
        if path != '/api/login' and path != '/api/register':
            if 'Authorization' not in headers.keys():
                return make_response("please login", 401)

            if 'token' not in session.keys():
                return make_response("please login", 401)

            print('token exist')
            if headers['Authorization'] != session['token']:
                return make_response("please login", 401)

    except Exception as e:
        print(str(e))
        return make_response(str(e), 401)
    

@app.route('/base')
def base():
    return 'base'

if __name__ == '__main__':
    app.run(debug=True)
