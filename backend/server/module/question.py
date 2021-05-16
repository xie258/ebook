from utils.toDict import tuple_to_dict
from utils.response import do_response
from flask import Blueprint, make_response, request, json
import pymysql
import datetime

question = Blueprint('question', __name__)


@question.route('/api/question/get_all', methods=['POST', 'GET'])
def get_all():
    sql = 'select * from paper_question'
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all", all_data)
        key_list = ["questionId", "questionName",
                    "questionContent", "creator", "createTime","questionType"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp", resp_data)
        resp = do_response("success", resp_data, 200)

    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    cursor.close()
    db2.close()
    return make_response(resp, 200)


@question.route('/api/question/add', methods=['POST', 'GET'])
def add():
    data = json.loads(request.data)
    print(data)
    questionName = data['questionName']
    questionContent = data['questionContent']
    questionType = data['questionType']
    creator = data["creator"]
    createTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    sql = 'insert into paper_question(questionName,questionContent,creator,createTime,questionType) values("%s","%s","%s","%s","%s")' % (
        questionName, questionContent, creator, createTime,questionType)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()   
        cursor.execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    cursor.close()
    db2.close()
    return make_response(resp, 200)

@question.route('/api/question/delete_by_id', methods=['POST', 'GET'])
def delete_by_id():
    data = json.loads(request.data)
    print(data)
    questionId = data['questionId']
    sql = 'delete from paper_question where questionId = %d' % (questionId)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost", user="root", password="123456",
                              db="ebook", port=3306, use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()   
        cursor.execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    cursor.close()
    db2.close()
    return make_response(resp, 200)