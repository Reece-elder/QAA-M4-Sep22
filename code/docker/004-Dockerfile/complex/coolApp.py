# If this was a normal Python flask app we'd need to install python and flask 
# We'll be running the python app in a container, which will have all dependencies installed for us 

# Flask is a web server framework for python, where it can listen for requests (/) and do something 

from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello World!"

if __name__ == "__main__":
    app.run(port=5000, host='0.0.0.0', debug=True)