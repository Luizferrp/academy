from flask import Blueprint, render_template
from libs import db
from libs import listTable

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template('index.html')

