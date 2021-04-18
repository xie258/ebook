from flask import Blueprint, make_response, request, json

import datetime

paper = Blueprint('paper', __name__)

from database.ext import db2

from utils.response import do_response
from utils.toDict import tuple_to_dict

@paper.route('/api/paper/create', methods=['POST', 'GET'])
def createPaper():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    askContent = data["askContent"]
    paperDescription =  data["paperDescription"]
    paperName = data["paperName"]
    print(type(data["selectContent"]))
    print(data["selectContent"])
    selectContent = data["selectContent"]
    print("ss",selectContent)
    print(type(selectContent))
    # json.loads(selectContent)
    creator = data["creator"]
    createTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    sql = "insert into teacher_paper(paperName, paperDescription, \
            selectContent, askContent, createTime, creator) \
                values('%s','%s','%s','%s','%s','%s') "  % \
                    (paperName, paperDescription,selectContent, \
                         askContent, createTime, creator)   
    print(sql)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        db2.commit()
        resp = do_response("success","true", 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)