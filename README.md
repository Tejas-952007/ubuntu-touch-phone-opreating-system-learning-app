## 📚 Odoo E-Learning on Ubuntu Touch

> Hackathon Project – Bringing Odoo E-Learning to Ubuntu Touch

---

## 🚀 Overview
This project delivers a **dedicated mobile app for Ubuntu Touch** that integrates seamlessly with **Odoo OCA’s E-Learning module**.  

With this app, users can:
- Browse and enroll in courses  
- Complete lessons and quizzes  
- Track progress and certificates  
- Use offline mode for learning on the go  

👉 It fills the gap of having **no official Odoo E-Learning app** on Ubuntu Touch.  

---

## 🎯 Features
- 📖 **Course Catalog** – Discover and explore courses  
- 📝 **Quizzes & Lessons** – Complete content within the app  
- 📊 **Progress Tracking** – View enrolled courses and certificates  
- 🔑 **Authentication** – Secure login using Odoo credentials  
- 📥 **Offline Mode** – Download and access courses offline  

---

## 🛠 Tech Stack
- **Frontend**: QML + JavaScript (Ubuntu Touch UI)  
- **Backend**: Python (Odoo API Integration)  
- **API**: Odoo XML-RPC / REST API  
- **Database**: SQLite (Offline caching)  
- **Packaging**: Clickable App for Ubuntu Touch  

---

## 🏗 Architecture
```mermaid
flowchart TD
    A[Ubuntu Touch App - QML/JS] -->|User Actions| B[Python Backend Layer]
    B -->|API Calls| C[Odoo Server with OCA E-Learning]
    B --> D[SQLite Cache]
    C -->|Course Data, Quizzes, Certificates| B
    D -->|Offline Access| A

