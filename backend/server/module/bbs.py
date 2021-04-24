from flask import Blueprint, make_response, request, json

import datetime

bbs = Blueprint('bbs', __name__)

from database.ext import db2

from utils.response import do_response
from utils.toDict import tuple_to_dict

@bbs.route('/api/bbs/create_topic', methods=['POST', 'GET'])
def create_topic():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    author = data['author']
    topicName = data['topicName']
    createTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    sql = 'insert into bbs_topic(author,topicName,createTime) values("%s","%s", "%s")' \
        % (author,topicName, createTime)
    print(sql)
    try:
        db2.cursor().execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)


@bbs.route('/api/bbs/get_topic_all', methods=['POST', 'GET'])
def get_topic_all():
    sql = 'select * from bbs_topic order by createTime desc'
    print(sql)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["idbbs","author","topicName","createTime"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)

@bbs.route('/api/bbs/create_bbs_comment', methods=['POST', 'GET'])
def create_bbs_comment():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    author = data['author']
    bbsId = data['bbsId']
    avatar = data['avatar']
    content = data['content']
    createTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    sql = 'insert into bbs_comment(bbsId,author,avatar, \
            content,createTime ) values("%s","%s", "%s","%s", "%s")' \
        % (bbsId,author,avatar,content,createTime )
    print(sql)
    try:
        db2.cursor().execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)


@bbs.route('/api/bbs/get_bbs_comment_by_topic', methods=['POST', 'GET'])
def get_bbs_comment_by_topic():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    bbsId = data['bbsId']
    sql = 'select * from bbs_comment where bbsId = %d order by createTime asc' \
        % (int(bbsId))
    print(sql)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["commentId","bbsId","author","avatar","content","createTime"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)