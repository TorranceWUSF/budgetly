viewbudget <- function(df, month = 1){


    pieces = c(df[month,2], df[month,6], df[month,8])

    title <- print(paste("Budget Breakdown for the Month", month))

    labs <- c("Net Income", "Expenditures" , "Savings")

    pie(pieces, labels = labs, main = title, col = c("lightpink1", "lightskyblue", "plum4"))

}

