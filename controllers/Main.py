from flask import Blueprint, render_template
from libs import db
from libs import listTable
from models.Adm import Adm


main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template('index.html')

@main.route('/adm')
def adm():
    return render_template('components/list.html', adm=listTable(Adm))