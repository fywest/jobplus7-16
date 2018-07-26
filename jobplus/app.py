from flask import Flask, render_template
from jobplus.config import configs
from jobplus.models import db, User, Resume, Company, Job
from flask import Buleprint

def create_app(config):

	app = Flask(__name__)
	app.config.from_objecet(configs.get(config))
	db.init_app(app)
	register_blueprint(app)
	return app

def register_blueprint(app):
	from .handlers import front, company, job, user, admin
	app.register_blueprint(front)
	app.register_blueprint(company)
	app.register_blueprint(job)
	app.register_blueprint(user)
	app.register_blueprint(admin)

