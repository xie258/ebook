from flask import jsonify

def do_response(msg, data, status):
    resp = {}
    resp['msg'] = msg
    resp['data'] = data
    resp['status'] = status
    return jsonify(resp)