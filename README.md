# Odoo E-Learning Backend API

This is the backend API server for the Odoo E-Learning Ubuntu Touch mobile application. It provides a RESTful interface that connects to Odoo's OCA E-Learning module and handles authentication, course management, progress tracking, and certificate generation.

## 🏗️ Architecture

backend/

├── app.py # Main Flask application

├── models.py # Database models (SQLAlchemy)

├── odoorpc_connection.py # Odoo RPC connection handler

├── requirements.txt # Python dependencies

└── README.md # This file

text


## ✨ Features

- **Odoo Integration**: Seamless connection to Odoo's OCA E-Learning module via XML-RPC
- **RESTful API**: Clean JSON API endpoints for mobile app consumption
- **Authentication**: User login with Odoo credentials
- **Course Management**: Fetch courses, lessons, and quizzes from Odoo
- **Progress Tracking**: Track user progress and quiz scores
- **Certificate Support**: Handle certificate generation and retrieval
- **Offline Caching**: SQLite database for caching data when offline
- **CORS Enabled**: Configured for cross-origin requests from mobile app

## 🚀 Quick Start

### Prerequisites

- Python 3.8+
- Odoo instance with OCA E-Learning module
- Ubuntu Touch SDK (for frontend development)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/odoo-ubuntu-touch-elearning.git
   cd odoo-ubuntu-touch-elearning/backend

Create virtual environment
bash

python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

Install dependencies
bash

pip install -r requirements.txt

Configure environment
bash

cp .env.example .env
# Edit .env with your Odoo credentials

Initialize database
bash

python -c "
from app import app, db
with app.app_context():
    db.create_all()
"

Run the server
bash

python app.py

The API will be available at http://localhost:5000
⚙️ Configuration

Create a .env file with these variables:
ini

# Odoo Connection
ODOO_URL=https://your-odoo-instance.com
ODOO_DB=your_database_name
ODOO_USERNAME=your_username
ODOO_PASSWORD=your_password

# Flask Settings
SECRET_KEY=your-secret-key-here
DEBUG=False

# Database
DATABASE_URL=sqlite:///app.db

# CORS (comma-separated for multiple origins)
CORS_ORIGINS=http://localhost:8080,http://192.168.1.*

📡 API Endpoints
Authentication

    POST /api/v1/auth/login - Authenticate user with Odoo credentials

Courses

    GET /api/v1/courses - Get list of available courses

    GET /api/v1/courses/{id}/content - Get detailed course content

Quizzes

    GET /api/v1/quizzes/{id} - Get quiz questions

    POST /api/v1/quizzes/{id}/submit - Submit quiz answers and get score

Certificates

    GET /api/v1/certificates - Get user's certificates

Health Check

    GET /health - Server status endpoint

🔌 Odoo Integration

The backend connects to Odoo using the following models:

    res.users - User authentication

    slide.channel - Courses

    slide.slide - Lessons and quizzes

    slide.question - Quiz questions

    slide.answer - Quiz answers

Required Odoo Permissions

The API user needs these permissions in Odoo:

    Read access to slide.channel, slide.slide, slide.question

    User authentication privileges

    Certificate access (if using certificate features)

🗃️ Database Schema

The SQLite database caches these tables:

    users - Local user information

    courses - Course data from Odoo

    sections - Course sections

    lessons - Individual lessons

    quizzes - Course quizzes

    questions - Quiz questions

    enrollments - User course enrollments

    user_progress - User progress tracking

    certificates - User certificates

🧪 Development Mode

When DEBUG=True or Odoo connection fails, the API returns mock data:

    Sample courses and content

    Mock authentication

    Simulated quiz scoring

🚀 Deployment
Production with Gunicorn
bash

pip install gunicorn
gunicorn -w 4 -b 0.0.0.0:5000 app:app

Docker Deployment
bash

docker build -t odoo-elearning-backend .
docker run -p 5000:5000 odoo-elearning-backend

🔧 Troubleshooting
Common Issues

    Odoo Connection Failed

        Check ODOO_URL format (should be https:// or http://)

        Verify database name, username, and password

        Ensure Odoo instance is running and accessible

    Import Errors

        Make sure all dependencies are installed: pip install -r requirements.txt

    Database Issues

        Delete app.db file and reinitialize: rm app.db && python init_db.py

    CORS Errors

        Check CORS_ORIGINS configuration matches your frontend URL

Logs

Enable debug logging by setting DEBUG=True in your .env file. Check the console output for detailed error messages.
🤝 Contributing

    Fork the repository

    Create a feature branch: git checkout -b feature/new-feature

    Make your changes and add tests

    Commit your changes: git commit -am 'Add new feature'

    Push to the branch: git push origin feature/new-feature

    Submit a pull request

📄 License

This project is licensed under the AGPL-3.0 License - see the LICENSE file for details.
🆘 Support

For support and questions:

    Check the Odoo OCA E-Learning documentation

    Open an issue on GitHub
