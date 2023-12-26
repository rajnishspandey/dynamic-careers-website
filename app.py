from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello"


if __name__ == "__main__":
    #print("i am inside the if now")
    app.run(host='0.0.0.0', debug=True)