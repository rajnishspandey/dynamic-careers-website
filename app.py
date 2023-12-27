from flask import Flask, render_template, jsonify

app = Flask(__name__)

JOBS = [
    {
        'id':1,
        'title':"Analyst",
        'location':"Mumbai",
        'salary':"RS. 10,00000"
    },
        {
        'id':2,
        'title':"Data Analyst",
        'location':"Mumbai",
        'salary':"RS. 12,00000"
    },
        {
        'id':3,
        'title':"Data Scientist",
        'location':"Mumbai",
        'salary':"RS. 15,00000"
    },
        {
        'id':4,
        'title':"Backend Engineer",
        'location':"Delhi",
        'salary':"RS. 10,00000"
    }
]

@app.route("/")
def hello():
    return render_template("home.html", jobs=JOBS)

@app.route("/api/jobs")
def list_jobs():
    return jsonify(JOBS)

if __name__ == "__main__":
    #print("i am inside the if now")
    app.run(host='0.0.0.0', debug=True)