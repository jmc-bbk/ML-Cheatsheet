# Assignment

a <- 1 # a = 1
b <- c(1,2,3,4,5) # b = a list (vector in R) of 1,2,3,4,5
m <- matrix(1:16, nrow = 4, ncol = 4) # m is a matrix with 4 rows & cols that contains numbers 1 to 16

# Print the results to console

a # print a
b # print b
m # print m

# Functions

# matrix() is a function that takes parameters

m <- matrix(1:16, nrow = 4, ncol = 4)

# the first parameter is a vector of c(1,2,3,...,16)

1:16

# the other parameters indicate the number of rows and cols to put the data into

m

# library() is a function to load packages into R
# someone has already wrote the code, so you don't have to

# you have to install packages before loading them
# type install.packages('name_of_package') into the console to install them

library(ISLR)

d <- ISLR::Auto # Assign the Auto dataset from ISLR to d

# Looking at data

summary(d) # shows you the variables in your dataset

# Create a regression model

model <- lm(mpg ~ horsepower, data = d)

# lm stands for linear model and will make a regression

# the first parameter is the model, we want to predict mpg from horsepower

# the second parameter is the dataset, it lets lm know where mpg and horsepower are stored

summary(model) # print out the results of the model

# we can see from the output that horsepower predicts mpg 

# shock_pikachu.jpg

# the p value is <2e-16 (in other words < .001) so is significant
# the estimate is -0.157
# for every 1-unit increase in horsepower, mpg decreases by 0.157 units