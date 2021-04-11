from flask import Blueprint, make_response
logins = Blueprint('login', __name__)

from database.models import User

from database.ext import db2

@logins.route('/api/login', methods=['POST', 'GET'])
def login():
    
    # sql = 'insert into user(username,password,types) values("%s","%s","%d")' % ('users',"123456", 1)
    # db2.cursor().execute(sql)
    # db2.commit()
    
    # users = User.query.all()
    # print(users)
    resp = make_response("hello")
    resp.status = '200'
    
    return resp