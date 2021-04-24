from flask import Blueprint, make_response, request, json

import datetime

ebook = Blueprint('ebook', __name__)

from database.ext import db2

from utils.response import do_response
from utils.toDict import tuple_to_dict

@ebook.route('/api/ebook/get_book_list', methods=['POST', 'GET'])
def get_book_list():
    # print(request.data)
    # data = json.loads(request.data)
    # print(data)
    # askContent = data["askContent"]
    # createTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    # sql = "insert into teacher_paper(paperName, paperDescription, \
    #         selectContent, askContent, createTime, creator) \
    #             values('%s','%s','%s','%s','%s','%s') "  % \
    #                 (paperName, paperDescription,selectContent, \
    #                      askContent, createTime, creator)   
    sql = "select * from ebook order by createTime asc"
    print(sql)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["ebookId","title","author", \
                    "createTime","contentHtml"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)
    # try:
    #     cursor =db2.cursor()
    #     cursor.execute(sql)
    #     print(sql)
    #     db2.commit()
    #     resp = do_response("success","true", 200)
    # except Exception as e:
    #     print(e)
    #     data = str(e)
    #     resp = do_response("error", data, 400)

    # return make_response(resp, 200)