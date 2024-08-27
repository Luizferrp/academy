from libs import db
from flask_login import UserMixin

class Adm(UserMixin, db.Model):
    __tablename__ = "adm"
    id = db.Column("id", db.Integer(), primary_key=True)
    nome = db.Column('nome', db.String(100))
    senha = db.Column('senha', db.String(512))
    accesstag = db.Column("accesstag", db.Integer())
    academia_rs = db.relationship('Academia', back_populates='ownertag_rs')