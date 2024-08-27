from flask import Flask
from libs import db
from controllers.Main import main

def createApp() -> Flask:
    app = Flask(__name__, template_folder='./views', root_path="./")
    app.config["TESTING"] = False
    app.config['SECRET_KEY'] = 'generated-secrete-key'
    #app.config["SQLALCHEMY_DATABASE_URI"] = 'mysql+pymysql://flask:1234vai@localhost:3306/ra3'
    app.config["SQLALCHEMY_DATABASE_URI"] = 'postgresql+psycopg2://academy:academy@localhost:5432/academy'

    db.init_app(app)

    app.register_blueprint(main)

    return app