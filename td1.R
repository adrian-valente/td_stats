# Q1
library(tidyverse)
data <- read.csv('titanic_data.csv')
glimpse(data)
data[,1:5]
summary(data)
dim(data)

# Q2
nlevels(data$Sex)
levels(data$Sex)
table(data$Sex)
prop.table(table(data$Sex))

# Q3
data$Pclass <- factor(data$Pclass)
prop.table(table(data$Pclass))
prop.table(data$Survived)  # works if column is not officially a factor as well (but you might run into other trouble)

# Q4
sum(is.na(data$Age))

# Q5
table(data$Sex, data$Survived)
prop.table(table(data$Sex, data$Survived), margin=1)
prop.table(table(data$Sex, data$Survived), margin=2)
ftable(data$Sex, data$Pclass, data$Survived)

# Q6
bysex <- data %>% group_by(Sex) %>% summarize(surv=mean(Survived))
ggplot(bysex) + geom_bar(aes(x=Sex, y=surv), stat='identity')

bysexclass <- data %>% group_by(Sex, Pclass) %>% summarize(surv=mean(Survived))
ggplot(bysexclass) + geom_bar(aes(x=Pclass, y=surv, fill=Sex), stat='identity', position=position_dodge())

# Q7
ggplot(data) + geom_histogram(aes(Age))
sd(data$Age, na.rm=TRUE)
mean(data$Age, na.rm=TRUE)
median(data$Age, na.rm=TRUE)

# Q8
data$Survivedclass <- factor(data$Survived)
ggplot(data) + geom_boxplot(aes(x=Survivedclass, y=Age))
ggplot(data) + geom_violin(aes(x=Survivedclass, y=Age))
