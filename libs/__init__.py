def listTable(cclass) -> list:
    return [[a for a in b.__dict__.items() if a[0] != 'senha'] for b in db.session.query(cclass).all()]

from .Db import db
from .CreateApp import createApp