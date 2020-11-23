library(tidyverse)
titanic <- read.csv('titanic_data.csv')
data("anscombe")
data("UCBAdmissions")

titanic$Pclass <- factor(titanic$Pclass)
titanic$SurvivedFact <- factor(titanic$Survived)
titanic <- titanic %>% filter(!is.na(titanic$Age))
