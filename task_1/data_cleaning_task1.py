# ------------------------------------------------------------
# Internship Task 1: Data Cleaning and Preprocessing
# Dataset: Mall Customer Segmentation Data
# Tools: Python, Pandas
# ------------------------------------------------------------

# Import required libraries
import pandas as pd
import numpy as np

# Load the dataset
df = pd.read_csv("Mall_Customers.csv")
print("✅ Dataset Loaded Successfully!")
print("Shape of dataset:", df.shape)
print("\nFirst 5 rows:")
print(df.head())

# ------------------------------------------------------------
# Step 1: Check for Missing Values
# ------------------------------------------------------------
print("\nChecking for missing values:")
print(df.isnull().sum())

# Handle missing values (if any)
df.fillna(df.mean(numeric_only=True), inplace=True)

# ------------------------------------------------------------
# Step 2: Remove Duplicates
# ------------------------------------------------------------
duplicates = df.duplicated().sum()
print(f"\nNumber of duplicate rows before removal: {duplicates}")
df.drop_duplicates(inplace=True)
print("✅ Duplicates removed.")

# ------------------------------------------------------------
# Step 3: Standardize Text Values
# ------------------------------------------------------------
if 'Gender' in df.columns:
    df['Gender'] = df['Gender'].str.lower().str.strip()
    df['Gender'].replace({'f': 'female', 'm': 'male'}, inplace=True)
print("✅ Text columns standardized.")

# ------------------------------------------------------------
# Step 4: Rename Columns for Consistency
# ------------------------------------------------------------
df.columns = df.columns.str.strip().str.lower().str.replace(' ', '_')
print("\nRenamed Columns:")
print(df.columns.tolist())

# ------------------------------------------------------------
# Step 5: Check and Convert Data Types
# ------------------------------------------------------------
print("\nData types before conversion:")
print(df.dtypes)

# Convert numeric columns properly
if 'age' in df.columns:
    df['age'] = df['age'].astype(int)

print("\nData types after conversion:")
print(df.dtypes)

# ------------------------------------------------------------
# Step 6: Handle Outliers (Example: Using IQR method for 'annual_income_(k$)')
# ------------------------------------------------------------
if 'annual_income_(k$)' in df.columns:
    Q1 = df['annual_income_(k$)'].quantile(0.25)
    Q3 = df['annual_income_(k$)'].quantile(0.75)
    IQR = Q3 - Q1
    lower = Q1 - 1.5 * IQR
    upper = Q3 + 1.5 * IQR
    before = df.shape[0]
    df = df[(df['annual_income_(k$)'] >= lower) & (df['annual_income_(k$)'] <= upper)]
    after = df.shape[0]
    print(f"✅ Outlier handling done. Rows before: {before}, after: {after}")

# ------------------------------------------------------------
# Step 7: Final Data Check
# ------------------------------------------------------------
print("\nFinal dataset info:")
print(df.info())
print("\nSample cleaned data:")
print(df.head())

# ------------------------------------------------------------
# Step 8: Save the Cleaned Dataset
# ------------------------------------------------------------
df.to_csv("cleaned_mall_customers.csv", index=False)
print("\n✅ Cleaned dataset saved as 'cleaned_mall_customers.csv'")
