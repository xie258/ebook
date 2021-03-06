from flask import Blueprint, make_response, request, json

import datetime

classmanage = Blueprint('classmanage', __name__)

from database.ext import db2
import pymysql

from utils.response import do_response
from utils.toDict import tuple_to_dict

@classmanage.route('/api/class/create', methods=['POST', 'GET'])
def create():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    teacherName = data['teacherName']
    className = data['className']
    description = data['description']
    sql = 'insert into class_teacher(teacherName,className,description) values("%s","%s", "%s")' % (teacherName,className, description)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        db2.cursor().execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)
    
@classmanage.route('/api/class/get', methods=['POST', 'GET'])
def getClass():
    print("data",request.data)
    print("sss")
    data = json.loads(request.data)
    print(data)
    teacherName = data['teacherName']
    sql = 'select * from class_teacher where teacherName = "%s"' % (teacherName)
    if teacherName == "":
        sql = 'select * from class_teacher'
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        cursor =db2.cursor()
        cursor.execute(sql)
        print("ssss")
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["className", "teacherName", "description"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)

@classmanage.route('/api/class/delete', methods=['POST', 'GET'])
def delete():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    className = data['className']
    sql = 'delete from class_teacher where className = "%s"' % (className)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        db2.cursor().execute(sql)
        db2.commit()
        resp = do_response("success", "true", 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)

@classmanage.route('/api/class/join', methods=['POST', 'GET'])
def join():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    className = data['className']
    studentName = data['studentName']
    status = data['status']
    sql_one = 'select * from class_student where studentName = "%s" \
                and className = "%s"' % (studentName, className)
    sql_two = 'insert into class_student(studentName,className,status) \
                values("%s","%s", %d)' % (studentName,className, status)
    sql_three = 'update class_student set status = %d \
                     where studentName = "%s" \
                        and className = "%s"' % (status, studentName, className)
    
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        cursor = db2.cursor()
        cursor.execute(sql_one)
        print(sql_one)
        all_data = cursor.fetchall()
        print("all",all_data)
        
        if len(all_data) < 1:
            cursor.execute(sql_two)
            print(sql_two)
        else:
            cursor.execute(sql_three)
            print(sql_three)
        db2.commit()
        resp = do_response("success", "true", 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)


@classmanage.route('/api/class/get_join_list', methods=['POST', 'GET'])
def get_join_list():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    studentName = data['studentName']
    sql = 'select a.className,a.teacherName, a.description, b.status \
        from class_teacher as a left join class_student as b \
            on a.className = b.className \
                and b.studentName = "%s"' % (studentName)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["className", "teacherName", "description", "status"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)

@classmanage.route('/api/class/get_class_one', methods=['POST', 'GET'])
def get_class_one():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    className = data['className']
    sql = ''' select studentName from class_student where className = "%s" \
                and status = 1''' % (className)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["studentName"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)
        
    return make_response(resp, 200)

@classmanage.route('/api/class/notificatoin/add', methods=['POST', 'GET'])
def addClassNotification():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    className = data['className']
    title = data['title']
    content = data["content"]
    noticeTime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    sql = 'insert into class_notification(className, title, content, noticeTime) \
                values("%s","%s","%s","%s") '  % (className, title, content, noticeTime)
                 
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        db2.commit()
        resp = do_response("success","true", 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)

@classmanage.route('/api/class/notificatoin/get', methods=['POST', 'GET'])
def addClassNotificatio():
    print(request.data)
    data = json.loads(request.data)
    print(data)
    className = data['className']
    sql = 'select * from class_notification where className = "%s"' %(className)
    print(sql)
    try:
        db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        all_data = cursor.fetchall()
        print("all",all_data)
        key_list = ["notificationId","className","title","content","noticeTime"]
        resp_data = tuple_to_dict(key_list, all_data)
        print("resp",resp_data)
        resp = do_response("success",resp_data, 200)
        cursor.close()
        db2.close()
    except Exception as e:
        print(e)
        data = str(e)
        resp = do_response("error", data, 400)

    return make_response(resp, 200)