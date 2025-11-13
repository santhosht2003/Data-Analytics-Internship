# 🧹 Internship Task 1: Data Cleaning and Preprocessing

##  Objective
To clean and preprocess a raw dataset by handling missing values, duplicates, inconsistent formats, and incorrect data types using Python (Pandas).

---

##  Dataset Used
**Mall Customer Segmentation Data**  
(Source: Kaggle)

---

##  Steps Performed
1. Loaded dataset using Pandas.  
2. Checked for missing values using `.isnull().sum()` (none found).  
3. Removed duplicate rows (0 duplicates).  
4. Standardized text columns (e.g., gender to lowercase).  
5. Renamed columns to clean, uniform format (lowercase, underscores).  
6. Checked and confirmed correct data types.  
7. Detected and handled outliers in **annual_income_(k$)** using the IQR method.  
8. Exported cleaned dataset as `cleaned_mall_customers.csv`.

---

##  Tools & Libraries Used
- **Python 3.10**
- **Pandas**
- **NumPy**
- (Optional) Jupyter Notebook / VS Code

---

##  Output Files
| File | Description |
|------|--------------|
| `Mall_Customers.csv` | Raw dataset |
| `cleaned_mall_customers.csv` | Cleaned dataset |
| `data_cleaning_task1.py` | Python script used for preprocessing |
| `README.md` | Summary of steps and learnings |

---

##  Learnings
- Learned how to identify and handle missing values.  
- Understood the process of removing duplicates and outliers.  
- Practiced standardizing and renaming columns for consistency.  
- Gained hands-on experience preparing data for analysis.

---

##  Final Result
A clean, structured dataset ready for analysis or visualization.
