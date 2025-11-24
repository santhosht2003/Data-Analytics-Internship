import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

# Connect to database
conn = sqlite3.connect("sales_data.db")

print("Connected to SQLite database!")

# SQL Query: Total Quantity + Revenue per product
query = """
SELECT 
    product,
    SUM(quantity) AS total_qty,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
"""

# Load into pandas DataFrame
df = pd.read_sql_query(query, conn)

# Print results
print("\n📌 Sales Summary:")
print(df)

# Plot simple bar chart
plt.figure(figsize=(8,5))
plt.bar(df['product'], df['revenue'])
plt.xlabel("Product")
plt.ylabel("Revenue")
plt.title("Revenue by Product")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("sales_chart.png")   # Save image
plt.show()

conn.close()
