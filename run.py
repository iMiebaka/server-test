from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return "<h1>M3 DIstrict App Check</h1>"


if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)