import sqlite3

# Create and connect to SQLite database
conn = sqlite3.connect("sales_data.db")
cursor = conn.cursor()

# Create table
cursor.execute("""
CREATE TABLE IF NOT EXISTS sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product TEXT,
    quantity INTEGER,
    price REAL
)
""")

# Insert 12 rows of sample data
data = [
    ('Laptop', 3, 50000),
    ('Laptop', 2, 52000),
    ('Mobile', 5, 15000),
    ('Mobile', 3, 18000),
    ('Headphones', 10, 1500),
    ('Headphones', 6, 1800),
    ('Tablet', 4, 22000),
    ('Tablet', 3, 25000),
    ('Keyboard', 8, 1000),
    ('Keyboard', 5, 1200),
    ('Monitor', 2, 12000),
    ('Monitor', 3, 13000)
]

cursor.executemany("INSERT INTO sales (product, quantity, price) VALUES (?, ?, ?)", data)

conn.commit()
conn.close()

print("Database created & sample data inserted successfully!")
