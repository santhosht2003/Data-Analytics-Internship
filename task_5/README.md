# Task 5 — Exploratory Data Analysis (Titanic Dataset)

##  Objective
The goal of this task is to perform Exploratory Data Analysis (EDA) on the Titanic dataset to understand patterns, detect relationships, and extract meaningful insights.  
The analysis includes univariate, bivariate, and multivariate exploration using Python.

---

##  Dataset
Dataset used: **Titanic - train.csv**

Source: Kaggle  
URL: https://www.kaggle.com/c/titanic/data

File included:
- `titanic.csv`

---

##  Tools & Libraries Used
- **Python**
- **VS Code / Jupyter Notebook**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Seaborn**

---

##  Steps Performed

###  1. Data Loading
Loaded `titanic.csv` and viewed initial records.

###  2. Data Understanding
- Checked dataset information (`df.info()`)
- Viewed statistical summary (`df.describe()`)
- Identified missing values

###  3. Univariate Analysis
- Countplot of Survived
- Countplot of Gender
- Histogram of Age

###  4. Bivariate Analysis
- Survival rate by gender
- Survival rate by passenger class (Pclass)
- Age vs Fare scatterplot (colored by survival)

###  5. Multivariate Analysis
- Correlation heatmap (numeric features only)
- Pairplot of selected variables

###  6. Outlier Detection
- Boxplot for Fare
- Boxplot for Age

###  7. Summary of Insights
- Females had a much higher survival rate than males.
- 1st class passengers survived more than 2nd and 3rd class.
- Young passengers were more likely to survive.
- Fare has several high-value outliers.
- Strong correlation exists between Fare and Pclass.
- Age and Cabin columns contain missing values.
- A combination of gender + class strongly influenced survival.

---

## Files in Repository

- **titanic_eda.ipynb** — Jupyter Notebook containing full EDA code  
- **titanic.csv** — Dataset  
- **task_5_titanic_eda.pdf** — Exported PDF report  
- **README.md** — This documentation file  

---

