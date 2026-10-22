
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Secure Cloud Infrastructure</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #f1f5f9;
                margin: 0;
                padding: 40px;
                color: #1e293b;
            }
            .card {
                max-width: 700px;
                margin: 40px auto;
                background: white;
                padding: 32px;
                border-radius: 12px;
                box-shadow: 0 4px 16px #0001;
            }
            h1 { color: #2563eb; }
            .status { color: #15803d; font-weight: bold; }
        </style>
    </head>
    <body>
        <div class="card">
            <h1>Secure Cloud Infrastructure</h1>
            <p>Our custom cloud application is running!</p>
            <p class="status">Application Status: Healthy</p>
            <p>Built with Python Flask, Docker, and Kubernetes.</p>
        </div>
    </body>
    </html>
    """

@app.route("/health")
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
