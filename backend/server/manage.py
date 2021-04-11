from database import create_app
from database.ext import db

import os
from flask_script import Manager, Server

from module.login import logins
from module.test import test 
from database.ext import db

app = create_app()
db.init_app(app)
app.register_blueprint(logins)

app.register_blueprint(test)

@app.route('/base')
def base():
    return 'base'

if __name__ == '__main__':
    print(app.url_map)
    print(app)
    app.run(debug=True)