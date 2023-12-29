from flask import Flask, render_template, jsonify, request
from database import load_jobs_from_db,load_job_from_db, submit_application

app = Flask(__name__)

@app.route("/")
def home_page():
    jobs = load_jobs_from_db()
    return render_template("home.html", jobs=jobs)

@app.route("/job/<id>")
def show_job(id):
    job = load_job_from_db(id)
    if not job:
        return "Not Found", 404
    return render_template('jd.html', job=job)

# post method - data is available in the form
# get method - data is available in args or we can say url
@app.route("/job/<id>/apply", methods=['POST'])
def apply_job(id):
    data = request.form
    job = load_job_from_db(id)
    submit_application(id, data)
    return render_template('application_submitted.html', application=data, job=job)

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)