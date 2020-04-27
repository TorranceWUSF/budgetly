library(budgetly)


#The first function that you would want to run is createbudget(). It has two arguments: netincome and savingspercentage
#In this example, well create a budget that has a monthly net income of $2000 and a savings percentage of 10%.
##reatebudget() creates a data frame

data <- createbudget(2000,10)

data

##Month - This is a yearly budget organized by the month

#Net Income - The amount of money the user expects to make per month

#Expected Savings Percentage - The perfect of the user's netcome the wish to save per month

#Fixed Expenditures - The amount of money the user spent in fixed expences that month. Use this area for mortage, car payments,
#insurance, etc

#Variable Expenditures - The amount of money the user spent in variable expences that month. Use this area for subscriptions, emergency purchaces,
#one time purchases, gifts for others, etc.

#Total Expenditures - The total amount of money the user spent in total that month.

#Goal Reached - Tells the user if they reached the savings goal they planned for that month

#Amount Saved - The amount of money (if any) the user saved that month

#Amount Left - The amount of money the user has after savings

#Columns 6-9 are filled out after the user use the function updatebudget()


data <- updatebudget(data, 1, 500, 400)

data

#updatebudget() takes 4 arguments

#A data frame (created using the createbudget()), the month to be updated, the fixed expences for that month,
#and the variable expenses that month

#The function fills out the rest of the data frame

#In this example, We will fill in the next two months of the yearly budget

data <- updatebudget(data, 2, 600, 600)

data <- updatebudget(data, 3, 1300, 500)

data


#To visualize the amount of money the user uses in a month, the can use viewbudget()
#viewbudget takes two arguments: a data frame and the month the user wishes to view

chart <- viewbudget(data,2)

chart


#In this example, we are looking at the 2nd month of the year


#To compare two months to each other use comparebudget()
#comparebudget() takes four arugments (three required and one optional): A data frame, the first month, the second month,
#and an optional argument - sidebyside

comparebudget(data,1,3)

#Setting the arugment sidebyside to "YES" creates a data frame with the two months listed


months <- comparebudget(data,1,3,"YES")

months



