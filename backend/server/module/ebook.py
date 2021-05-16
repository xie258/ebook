from utils.toDict import tuple_to_dict
from utils.response import do_response
import pymysql
from database.ext import db2
from flask import Blueprint, make_response, request, json

import datetime

ebook = Blueprint('ebook', __name__)


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
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all", all_data)
        key_list = ["ebookId", "title", "author",
                    "createTime", "contentHtml"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp", resp_data)
        resp = do_response("success", resp_data, 200)
        cursor.close()
        db2.close()
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


@ebook.route('/api/ebook/save_book', methods=['POST', 'GET'])
def save_book():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    ebookId = data["ebookId"]
    username = data["username"]
    contentHtml = data["contentHtml"]
    createTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    updateTime = createTime
    sql_one = "select * from ebook_note where ebookId = %d \
                    and username = '%s'" % (ebookId, username)

    sql_two = "update ebook_note set contentHtml = '%s' , updateTime = '%s' where \
                ebookId = %d and username = '%s' " % \
        (contentHtml, updateTime, ebookId, username)

    sql_three = ''' insert into ebook_note(ebookId, username, contentHtml,  createTime, updateTime) values(%d,"%s",'%s',"%s","%s")''' % (
        ebookId, username, contentHtml, createTime, updateTime)

    try:
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()
        print(sql_one)
        cursor.execute(sql_one)
        all_data = cursor.fetchall()
        print("all", all_data)
        if len(all_data) < 1:
            print(sql_three)
            cursor.execute(sql_three)
        else:
            print(sql_two)
            cursor.execute(sql_two)
        db2.commit()
        resp = do_response("success", "true", 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)


@ebook.route('/api/ebook/load_book', methods=['POST', 'GET'])
def load_book():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    ebookId = data["ebookId"]
    username = data["username"]
    sql = "select * from ebook_note where ebookId = %d and username \
                = '%s'" % (ebookId, username)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all", all_data)
        key_list = ["noteId", "ebookId", "username", "contentHtml",
                    "createTime", "updateTime"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp", resp_data)
        resp = do_response("success", resp_data, 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)


@ebook.route('/api/ebook/searchBook', methods=['POST', 'GET'])
def searchBook():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    searchKey = data["searchKey"]
    sql = "select * from ebook where concat(title, author,createTime) like '%%%s%%' order by createTime asc" % searchKey
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all", all_data)
        key_list = ["ebookId", "title", "author",
                    "createTime", "contentHtml"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp", resp_data)
        resp = do_response("success", resp_data, 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)
