# Task 7 – Basic Sales Summary Using SQLite + Python

##  Objective
Connect Python to a SQLite database, run SQL queries, load results into pandas, 
and visualize sales data using matplotlib.

##  Tools Used
- Python
- SQLite3 (built into Python)
- Pandas
- Matplotlib

##  Dataset
A simple SQLite database named **sales_data.db** containing one table:

### Table: sales  
| Column   | Type    |
|----------|---------|
| id       | INTEGER |
| product  | TEXT    |
| quantity | INTEGER |
| price    | REAL    |

Inserted 12 sample rows (Laptop, Mobile, Headphones, etc.)

##  Steps Completed

###  Created SQLite Database
Used Python + sqlite3 to create `sales_data.db` and insert sample records.

###  Connected Python to SQLite
conn = sqlite3.connect("sales_data.db")

###  Ran SQL Query
SELECT product, SUM(quantity), SUM(quantity * price)
FROM sales
GROUP BY product;

###  Loaded Results Using Pandas
df = pd.read_sql_query(query, conn)

###  Printed the Output Table
print(df)

###  Visualized Revenue using Bar Chart
df.plot(kind='bar', x='product', y='revenue')

Output saved as **sales_chart.png**.

## Final Outcome
- Learned SQL inside Python
- Performed aggregated sales summary
- Displayed table + bar chart
- Saved output chart for documentation

---
