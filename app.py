from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return '<h2>Hello from flask and Docker</h2>'



if __name__=="__main__":
    app.run(debug=True)