from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/api/ping")
def ping():
    return jsonify({"ok": True, "msg": "pong"})

@app.route("/api/courses")
def courses():
    return jsonify([
        {"id": 1, "title": "Intro to Python", "description": "Basics of Python"},
        {"id": 2, "title": "Web Development", "description": "Frontend basics"}
    ])

if __name__ == "__main__":
    app.run(debug=True, port=5000)
