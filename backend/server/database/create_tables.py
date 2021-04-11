from database import create_app
from ext import db
from database.models import *

app = create_app()
app_ctx = app.app_context()
with app_ctx:
    db.create_all()