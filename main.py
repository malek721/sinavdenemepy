from flask import Flask, render_template

app = Flask(__name__)

def say_hello():
    return "Hello from Python function!"

@app.route('/')
def index():
    message = say_hello()
    return render_template('index.html', msg=message)

if __name__ == '__main__':
    app.run(debug=True)