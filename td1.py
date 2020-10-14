import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np

# Q1
df = pd.read_csv('titanic_data.csv')
df.describe()
df.head()
df.dtypes
df.shape

# Q2
df.Pclass.nunique()
df.Pclass.unique()
df.Pclass.value_counts(normalize=True)

# Q3
df.Age.isna().sum()

# Q4
pd.crosstab(index=df.Sex, columns=df.Survived)
df.pivot_table(index=['Sex', 'Pclass'], columns='Survived', aggfunc='size')

# Q5
sns.barplot(data=df, x='Sex', y='Survived')
sns.barplot(data=df, x='Sex', y='Survived', hue='Pclass')

# Q6
sns.displot(data=df, x='Age')
sns.displot(data=df, x='Fare')
df.Age.std()

# Q7
sns.jointplot(data=df, x='Age', y='Fare')
sns.jointplot(data=df, x='Age', y='Fare', kind='hex')
