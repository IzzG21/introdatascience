#Q2 - Write a Function with default argument.
#Calculate BMI
#BMI = weight in kg / (height in m * height in m)

#Create function with arguments
BMI <- function(a = 48, b = 1.5){
  BMI <- a / (b^2)
  print(BMI)
}

#Call function without giving argument
BMI()

#Call cuntion with new argument
BMI(60, 1.72)
