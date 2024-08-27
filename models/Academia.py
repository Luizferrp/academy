from libs import db
from .Adm import Adm

class Academia(db.Model):
    __tablename__ = "academia"
    id = db.Column("id", db.Integer(), primary_key=True)
    nome = db.Column('nome', db.String(100))
    ownertag = db.Column('owner_tag', db.String(100), db.ForeignKey('adm.id'))
    ownertag_rs = db.relationship('Adm', back_populates='academia_rs')
    atividades_rs = db.relationship('Atividade', back_populates='ownertag_rs')
    planos_rs = db.relationship('Planos', back_populates='id_academia_rs')