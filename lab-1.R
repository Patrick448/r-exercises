# task 1
install.packages("dplyr")
library(dplyr)
View(starwars)

#task 2
#variables
  #name - text value, categorical
  #height - numerical (real) value
  #mass - numerical (real) value
  #hair_color - text value, categorical
  #skin_color - text value, categorical
  #eye_color  - text value, categorical
  #birth_year - numerical (integer) value
  #sex  - text value, categorical
  #gender - text value, categorical
  #homeworld - text value, categorical
  #species - text value, categorical
  #films - list
  #vehicles - list
  #starships - list

#task 3
  #mean
  mean(starwars$height, na.rm = TRUE)
  mean(starwars$mass, na.rm = TRUE)
  mean(starwars$birth_year, na.rm = TRUE)
  
  #median
  median(starwars$height, na.rm = TRUE)
  median(starwars$mass, na.rm = TRUE)
  median(starwars$birth_year, na.rm = TRUE)
  
  #IQR
  IQR(starwars$height, na.rm = TRUE)
  IQR(starwars$mass, na.rm = TRUE)
  IQR(starwars$birth_year, na.rm = TRUE)
  
  #sd
  sd(starwars$height, na.rm = TRUE)
  sd(starwars$mass, na.rm = TRUE)
  sd(starwars$birth_year, na.rm = TRUE)
  
#task 4
  hist(starwars$birth_year, 10)
  hist(starwars$birth_year, 20)
  hist(starwars$birth_year, 50)
  hist(starwars$birth_year, 100)
  hist(starwars$birth_year, 200)
  
  hist(starwars$height, 10)
  hist(starwars$height, 20)
  hist(starwars$height, 50)  
  hist(starwars$height, 100)
  hist(starwars$height, 200)
  
  #the best ones are with 20 and 50 bins
  
  boxplot(starwars$mass)
  mass <- sort(starwars$mass)
  boxplot(mass[1:length(mass)-1])
  
  