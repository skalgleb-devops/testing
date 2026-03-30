from flask import Flask

# THIS LINE IS MISSING:
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from the API!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
