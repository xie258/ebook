from flask import Blueprint, make_response, request
import hashlib
logins = Blueprint('login', __name__)

from database.models import User
from database.ext import db2

from utils.response import do_response


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
    password = MD5(password)
    sql = 'insert into user(username,password,types) values("%s","%s","%d")' % (username,password, 1)
    data = ''
    status = 200
    try:
        db2.cursor().execute(sql)
        db2.commit()
        data = 'true'
        status = '200'
    except Exception as e:
        print(e)
        status = '400'
        data = str(e)
    
    resp = make_response(data)
    resp.status = status
    return do_response("hello",data,400)
    
    
@logins.route('/api/login', methods=['POST', 'GET'])
def login():
    data = eval(request.data)
    username = data['username']
    password = data['password']
    print(request.data)
    sql = 'select * from user where username = "%s" and password = "%s"' % (username, password)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        all_data = cursor.fetchall()
        print(all_data)
        if len(all_data) < 1:
            msg = 'error'
            data = 'username or password error'
        else:
            msg = 'success'
            data = ''
        resp = do_response(msg, data, 200)
    except Exception as e:
        print(e)
        resp = do_response("error", str(e), 400)

    return make_response(resp, 200)
    