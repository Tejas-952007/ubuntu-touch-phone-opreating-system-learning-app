import sqlite3

DB_PATH = "db.sqlite3"

def get_connection():
    return sqlite3.connect(DB_PATH)

def get_courses():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT id, title, description, lessons_count FROM courses")
    rows = cur.fetchall()
    conn.close()
    return rows

def get_lessons(course_id):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT id, title, content FROM lessons WHERE course_id=?", (course_id,))
    rows = cur.fetchall()
    conn.close()
    return rows
