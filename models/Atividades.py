from libs import db
from .Academia import Academia

class Atividade(db.Model):
    __tablename__ = "atividades"
    id = db.Column("id", db.Integer(), primary_key=True)
    nome = db.Column('nome', db.String(100))
    vagas = db.Column('vagas', db.Integer())
    start_time = db.Column('start_time', db.Date)
    end_time = db.Column('end_time', db.Date)
    ownertag = db.Column('owner_tag', db.Integer(), db.ForeignKey('academia.id'))
    ownertag_rs = db.relationship('Academia', back_populates='atividades_rs')