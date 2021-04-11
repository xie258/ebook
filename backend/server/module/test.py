from flask import Blueprint
test=Blueprint('test',__name__,url_prefix='/test')

@test.route('/test')
def func1():
    return 'BluePrint2'