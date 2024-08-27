from flask import Blueprint, render_template
from libs import db
from libs import listTable
from models.Adm import Adm
from models.Prof import Prof
from models.Planos import Planos
from models.Clients import Clients
from models.Academia import Academia
from models.Atividades import Atividade

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template('index.html')

@main.route('/adm')
def adm():
    return render_template('components/list.html', adm=listTable(Adm))

@main.route('/prof')
def prof():
    return render_template('components/list.html', adm=listTable(Prof))

@main.route('/clients')
def clients():
    return render_template('components/list.html', adm=listTable(Clients))

@main.route('/academia')
def academia():
    return render_template('components/list.html', adm=listTable(Academia))

@main.route('/atividade')
def atividade():
    return render_template('components/list.html', adm=listTable(Atividade))

@main.route('/planos')
def planos():
    return render_template('components/list.html', adm=listTable(Planos))