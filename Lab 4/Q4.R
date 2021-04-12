#Write a Function myCGPA that calculates students’ CGPA.

#Creating table for student, course, marks
name <- c("Lily", "Lily", "Lily", "Lily", "Lily", "Lily")
course <- c("English", "Mathematics", "Biology", "Chemistry", "Physics", "Accounting")
marks <- c(95, 100, 59, 70, 80, 75)
dt <- data.frame(name, course, marks)
print(dt)

#CGPA
myCGPA <- function(marks){
  
  for(i in 1:length(marks)){
    numCourse <- i
  }
  print(paste("Number of courses taken: ", numCourse))
  
  result <- mean(marks)
  print(paste("Average marks: ", result))
  
  if(result >= 90){
    print(paste("A+ with CGPA", 4))
    
  }else if(result >= 80 && result < 90){
    print(paste("A with CGPA", 4))
    
  }else if(result >= 75 && result < 80){
    print(paste("A- with CGPA", 3.7))
    
  }else if(result >=70 && result < 75){
    print(paste("B+ with CGPA", 3.3))
    
  }else if(result >=65 && result < 70){
    print(paste("B with CGPA", 3))
    
  }else if(result >= 60 && result < 65){
    print(paste("B- with CGPA", 2.7))
    
  }else if(result >= 55 && result < 60){
    print(paste("C+ with CGPA", 2.3))
    
  }else if(result >= 50 && result < 55){
    print(paste("C with CGPA", 2))
    
  }else if(result >= 45 && result < 50){
    print(paste("C- with CGPA", 1.7))
    
  }else if(result >= 40 && result < 45){
    print(paste("D+ with CGPA", 1.3))
    
  }else if(result >= 35 && result < 40){
    print(paste("D with CGPA", 1))
    
  }else{
    print(paste("Fail"))
  }
}

myCGPA(marks)