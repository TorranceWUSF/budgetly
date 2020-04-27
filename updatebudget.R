updatebudget <- function(df, month, fixedexpenses, variableexpenses){

  df[month,4] <- fixedexpenses
  df[month,5] <- variableexpenses

  total = fixedexpenses + variableexpenses


  df[month,6] <- total


  net = df[month,2]
  expected = df[month,3]
  perexpected = expected/100.00

  savewant = net * perexpected

  truenet = net - savewant

  result = truenet - total

  regeresult = net - total


  if(result >= savewant){

    df[month,7] <- "Yes"

  }else{df[month,7] <- "No"}


  df[month,8] <- result

  df[month,9] <- regeresult


  return(df)
}


