from flask import Blueprint, make_response, request, session, g
import hashlib
logins = Blueprint('login', __name__)

from database.models import User
from database.ext import db2

from utils.response import do_response

from utils.token import auth, generate_auth_token

def MD5(data):
    md = hashlib.md5()
    md.update(data.encode(encoding='utf-8'))
    return md.hexdigest()

@logins.route('/api/register', methods=['POST', 'GET'])
def register():
    print(request.data)
    data = eval(request.data)
    username = data['username']
    password = data['password']
    types = data['types']
    password = MD5(password)
    sql = 'insert into user(username,password,types) values("%s","%s", %d)' % (username,password, int(types))
    data = ''
    status = 200
    try:
        db2.cursor().execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)
    
@auth.login_required
@logins.route('/api/login', methods=['POST', 'GET'])
def login():
    data = eval(request.data)
    username = data['username']
    password = MD5(data['password'])
    types = data['types']
    print(request.data)
    sql = 'select * from user where username = "%s" and password = "%s" and types = "%d"' % (username, password, types)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        all_data = cursor.fetchall()
        print(all_data)
        if len(all_data) < 1:
            msg = 'error'
            data = 'username or password error'
            resp = do_response(msg, data, 400)
        else:
            msg = 'success'
            data = generate_auth_token(username)
            session['token'] = data
            resp = do_response(msg, data, 200)
            
    except Exception as e:
        print(e)
        resp = do_response("error", str(e), 400)

    return make_response(resp, 200)
    

@logins.route('/api/logout', methods=['POST', 'GET'])
def logout():
    data = eval(request.data)
    username = data['username']
    print(request.data)
    try:
        session['token'] = None
        resp = do_response("success", "true", 200)
    except Exception as e:
        print(e)
        resp = do_response("error", str(e), 400)

    return make_response(resp, 200)