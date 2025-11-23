from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, CI/CD World! This is Flask running successfully."

@app.route("/home")
def test():
    return "<h1>Welcome Home amir </h1>"

if __name__ == "__main__":
    port = int(os.getenv("PORT", 5000))
    app.run(host="0.0.0.0", port=port)
