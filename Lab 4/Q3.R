#Q3 - Write a Function with argument values
#Calculate surface are of trapezium
#Area trapezium = (1/2) * height * (length top + length bottom)

#Create function with argument values
area.trapezium <- function(height, top.l, bottom.l){
  surface <- (1/2) * height * (top.l + bottom.l)
  print(surface)
}

#Call function by position
area.trapezium(5, 3, 11)

#Call function by names
area.trapezium(height = 5, top.l = 3, bottom.l = 11)
