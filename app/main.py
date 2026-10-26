
# Import Flask to create the web application
from flask import Flask

# Create the Flask application
app = Flask(__name__)

# Define the home page URL
@app.route("/")
def home():
    # Return the message displayed in the browser
    return "Hello, DevOps!"

# Start the development server
if __name__ == "__main__":
    # Listen on all container network interfaces
    app.run(host="0.0.0.0", port=5000)
