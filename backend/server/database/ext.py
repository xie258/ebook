# from flask_sqlalchemy import SQLAlchemy
# db = SQLAlchemy()
import pymysql
 
db2 = pymysql.connect(host="localhost",user="root",password="123456",db="ebook",port=3306,use_unicode=True, charset="utf8mb4")