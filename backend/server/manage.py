from database import create_app
from database.ext import db

import os
from flask_script import Manager, Server

from module.login import logins
from module.test import test 
from module.classmanage import classmanage
from module.paper import paper
from database.ext import db

app = create_app()
db.init_app(app)
app.register_blueprint(logins)
app.register_blueprint(classmanage)
app.register_blueprint(test)
app.register_blueprint(paper)

@app.route('/base')
def base():
    return 'base'

if __name__ == '__main__':
    app.run(debug=True)