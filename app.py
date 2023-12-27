from flask import Flask, render_template, jsonify
from database import load_jobs_from_db

app = Flask(__name__)

@app.route("/")
def home_page():
    jobs = load_jobs_from_db()
    return render_template("home.html", jobs=jobs)

if __name__ == "__main__":
    #print("i am inside the if now")
    app.run(host='0.0.0.0', debug=True)