#Q1 - Write a Function without an argument.
#Changing temperature Celsius to Fahrenheit
#Formula:(x)Celsius * (9/5) + 32 = (y)Fahrenheit

#Create function without argument
fahrenheit.temp <- function(){
  for(i in seq(from = 0, to = 100, by = 10)){
    print(i * (9/5) + 32)
  }
}

#Call function without supplying argument
fahrenheit.temp()