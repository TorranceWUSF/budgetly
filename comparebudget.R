
comparebudget <- function(df, month1, month2, sidebyside = "NO"){

  if(sidebyside == "NO"){

  print(paste("Your income for month ", month1, "was", df[month1,2]))
  print(paste("Your income for month ", month2, "was", df[month2,2]))

  if(df[month1,8] > df[month2,8]){

  print(paste("You saved more money in month", month1))

  }

  if(df[month2,8] > df[month1,8]){

    print(paste("You saved more money in month", month2))

  }

  if(df[month2,8] == df[month1,8]){

    print(paste("You saved the same amount in", month1, "as ", month2))

  }

  }

  if(sidebyside == "YES"){


    x <- data.frame(df[month1:month2,])

    return(x)
  }

}
