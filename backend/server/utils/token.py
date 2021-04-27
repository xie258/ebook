from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
from itsdangerous import BadSignature, SignatureExpired
from flask_httpauth import HTTPBasicAuth
auth = HTTPBasicAuth()
import hashlib
from database.ext import db2

def MD5(data):
    md = hashlib.md5()
    md.update(data.encode(encoding='utf-8'))
    return md.hexdigest()

# 密钥，可随意修改
SECRET_KEY = "asdfasdfreqwerxcvxcfd"
# 生成token, 有效时间为600min
def generate_auth_token(username, expiration=3600):
    # 第一个参数是内部私钥
    # 第二个参数是有效期（秒）
    print("sd",username)
    print(type(username))
    s = Serializer(SECRET_KEY, expires_in=expiration)
    return MD5(username)

# 解析token
def verify_auth_token(token):
    s = Serializer(SECRET_KEY)
    # token正确
    try:
        data = s.loads(token)
        return data
    # token过期
    except SignatureExpired:
        return None
    # token错误
    except BadSignature:
        return None
    
# connect mysql 
def check_user_in_sql(username, password):
    sql = 'select * from user where username = "%s" and password = "%s" and types = "%d"' % (username, password, types)
    try:
        cursor =db2.cursor()
        cursor.execute(sql)
        print(sql)
        all_data = cursor.fetchall()
        print(all_data)
        if len(all_data) < 1:
            return False
        else:
            return True
    except Exception as e:
        print(str(e))
        return False

# 验证token
@auth.verify_password
def verify_password(username, password):
    # 先验证token
    username = verify_auth_token(username)
    # 如果token不存在，验证用户id与密码是否匹配
    if not username:
        username = check_user_in_sql(username, password)
        # 如果用户id与密码对应不上，返回False
        if not user_id:
            return False
    g.username = username
    return True