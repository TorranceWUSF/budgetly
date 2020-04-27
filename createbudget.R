createbudget <- function(netincome, savingpercent){

  df = data.frame("Month" = 1:12, "Net Income" = netincome, "Expected Savings Percentage" = savingpercent,
                  "Fixed Expenditures" = 0, "Variable Expenditures" = 0, "Total Expenditures" = 0,
                  "Goal Reached" = 0, "Amount Saved" = 0, "Amount Left" = 0)

  return(df)
}


