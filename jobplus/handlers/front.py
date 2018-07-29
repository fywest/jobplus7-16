from flask import Blueprint
from jobplus.models import Job

front = Blueprint('front',__name__)

@front.route('/')
def index():
	jobs = Job.query.all()
	return render_template('index.html',jobs=jobs)