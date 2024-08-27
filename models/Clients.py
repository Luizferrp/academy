from libs import db

class Clients(db.Model):
    __tablename__ = "clients"
    id = db.Column("id", db.Integer(), primary_key=True)
    nome = db.Column('nome', db.String(100))
    senha = db.Column('senha', db.String(512))