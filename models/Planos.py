from libs import db
from .Academia import Academia

class Planos(db.Model):
    __tablename__ = "planos"
    id = db.Column("id", db.Integer(), primary_key=True)
    id_academia = db.Column('id_academia', db.Integer(), db.ForeignKey('academia.id'))
    nome = db.Column('nome', db.String(100))
    nome = db.Column('nome', db.String(500))
    valor = db.Column('valor', db.Integer())
    accesstag = db.Column('accesstag', db.Integer())
    id_academia_rs = db.relationship('Academia', back_populates='planos_rs')