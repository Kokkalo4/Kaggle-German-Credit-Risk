#Load the file
riskdat <- read.csv(".../input/german_credit_data.csv", stringsAsFactors = T)

#Load libraries
library(Hmisc)
library(dplyr)
library(ggplot2)


#Checking the Data
head(riskdat)
tail(riskdat)
str(riskdat)
summary(riskdat)
describe(riskdat)

#Making some changes to data
colnames(riskdat)[1] <- "index"

#Plotting the data
ggplot(riskdat, aes(Age)) + geom_histogram(binwidth=4, colour="black", fill="green") +
  labs(x= "Age",y= "Frequency" , title = "Plot of Age")

ggplot(riskdat, aes(Sex) ) + geom_bar(aes(fill = as.factor(riskdat$Sex))) + 
  scale_fill_discrete(name="Sex",
                      labels=c( "Female","Male")) + 
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(x= "Sex",y= "Frequency" , title = "Plot of Sex")


ggplot(riskdat, aes(Job) ) + geom_bar(aes(fill = as.factor(riskdat$Job))) + 
  scale_fill_discrete(name="Job Type",
                      labels=c( "Unskilled and Non-Resident","Unskilled and Resident", "Skilled", "Highly Skilled")) + 
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(x= "Level of Job",y= "Frequency" , title = "Plot of Job")

ggplot(riskdat, aes(Housing) ) + geom_bar(aes(fill = as.factor(riskdat$Housing))) + 
  scale_fill_discrete(name="Housing",
                      labels=c( "Free","Own", "Rent")) + 
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(x= "Housing",y= "Frequency" , title = "Plot of Housing")


ggplot(riskdat, aes(Saving.accounts) ) + geom_bar(aes(fill = as.factor(riskdat$Saving.accounts)))  + 
  scale_fill_discrete(name="Saving Accounts",
                      labels=c( "Little","Moderate", "Quite Rich", "Rich", "NA"))  +
  labs(x= "Saving Accounts",y= "Frequency" , title = "Plot of Saving Accounts")


ggplot(riskdat, aes(Checking.account) ) + geom_bar(aes(fill = as.factor(riskdat$Checking.account))) + 
  scale_fill_discrete(name="Checking Account",
                      labels=c( "Little","Moderate", "Rich")) + 
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(x= "Checking Account",y= "Frequency" , title = "Plot of Checking Account")

hist(riskdat$Credit.amount, main = "Histogram of Credit Amount", xlab = "Credit Amount", ylab = "Frequency", col = "green", border = "black" )

ggplot(riskdat, aes(Duration)) + geom_histogram(binwidth=4, colour="black", fill="green") +
  labs(x= "Duration in Months",y= "Frequency" , title = "Plot of Duration")

ggplot(riskdat, aes(Purpose) ) + geom_bar(aes(fill = as.factor(riskdat$Purpose))) + 
  scale_fill_discrete(name="Purpose of Loan",
                      labels=c( "Business","Car", "Domestic Appliances","Education","Furniture/Equipment","Radio/TV","Repairs","Vacation/Others")) + 
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(x= "Purpose of Loan",y= "Frequency" , title = "Plot of Loan Purpose")


