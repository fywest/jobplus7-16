from flask import Blueprint, render_template, current_app, request
from jobplus.models import Job,db,User

job = Blueprint('job', __name__, url_prefix='/job')


@job.route('/')
def index():
    page = request.args.get('page', 1, type=int)
    pagination = Job.query.order_by(Job.created_at.desc()).paginate(
        page=page,
        per_page=current_app.config['INDEX_PER_PAGE'],
        error_out=False
    )
    return render_template('job/index.html', pagination=pagination, active='job')


@job.route('/<int:job_id>')
def detail(job_id):
	job = Job.query.get_or_404(job_id)
	newest_companies_jobs = Job.query.filter(
        Job.id==job.company.detail.id
    ).limit(3)
	return render_template('job/detail.html',job=job,newest_companies_jobs=newest_companies_jobs)