import pandas as pd 
import matplotlib.pyplot as plt 

titanic = pd.read_csv('titanic_data.csv')
anscombe = pd.read_csv('anscombe.csv')
admissions = pd.read_csv('UCBAdmissions.csv')

titanic = titanic[~titanic.Age.isna()]