
#EXERCISE 1  
  123+456+7+8+9
  7*11*13 # multiplication (comments in R begin with hash #)
  
  
  #square roots, powers, logarithms
  sqrt(289)
  sqrt(2)
  3^8
  32^(1/5)
  11^4
  log(2)+log(3)
  log(6)
  log2(32)
  log10(1000)
  log10(1e12) # 1e12 = 10^12
  
  #assigning variables and trugonometry
  
  x <- pi/6
  x
  sin(x)
  cos(x)
  sin(x)^2 + cos(x)^2
  tan(x)
  cospi(5)
  cot(x)
  y <- asin(1/2)
  y/pi
  atan(sqrt(3))
  

#EXERCISE 2
  1==1
  2!=2
  as.numeric(TRUE)  
  as.numeric(FALSE)  
  as.numeric(1==1) + as.numeric(2==2) + as.numeric(3==5) #number of true sentences
  1
  2<=3 # lesser or equal than
  TRUE || FALSE #alternative (or)
  TRUE && FALSE #conjunction (and)
  !TRUE #negation (no)

#EXERCISE 3
  #VECTORS
  v <- c(1,3,4,2,7,3)
  v
  v <- 1:6  
  v<-seq(from =1, to = 30, by = 2.5)
  v    
  plot(v) 
  length(v)  
  max(v)
  max(v) - min(v)
  cumsum(v)
  which.max(v)
  
  #MATRICES
  v<-c(1,3,4,2,7,3)
  v  
  as.matrix
  A = matrix(c(1,2,3,-1,-5,3,2,0,1), ncol=3)
  A  
  A%*%A    
  A*A  
  eigen(A)  
  A%^%3
  
  #R PACKAGES
  install.packages("expm")
  library(expm)
  
  
#EXERCISE 4
  #Pie chart: survey
  what_to_eat_today<-c(31,21,16,9,5)
  names(what_to_eat_today)<-c("fish & chips", "pizza", "something healthy", "anything", "nothing")
  pie(what_to_eat_today)
  
  
  #Lengths of ski jumps among top 30 athletes during the World Cup contest
  #Trondheim, March 9th 2001
  ranking<-c(1:30)
  trial1a<-c(116,121,122.5,123,108.5,99.5,89.5,106.5,85,94,95,104.5,89,85,98)
  trial1b<-c(89,82.5,86,90.5,91,85.5,93.5,82,90,85,86.5,90,79.5,82,89)
  trial1<-c(trial1a,trial1b)
  trial2a<-c(138.5,134,122,120,119.5,127.5,118,100.5,124.5,104,102.5,85,100,102)
  trial2b<-c(85.5,94.5,99,98.5,88.5,87.5,89.5,81,95,80.5,83.5,83,79.5,85.5,83,73.5)
  trial2<-c(trial2a,trial2b)

  output<-rbind(ranking,trial1,trial2)
  View(output)
  output[,c(1,3,6,9)] # choice of some columns from the table
  output[2,] # 2nd row
  results_trial1 <- sort(trial1, decreasing=TRUE) #2. row sorted decreasingly
  ?plot #documentation of the plot function
  plot(trial1)
  plot(trial2)
  both_trials=c(trial1,trial2)
  hist(both_trials,breaks=3)
  hist(both_trials,breaks=6)
  hist(both_trials,breaks=10)
  hist(both_trials,breaks=30)
  hist(both_trials,breaks=300)
  boxplot(trial1,trial2,both_trials)
  
  boxplot(c(both))
  boxplot(c(both_trials,200))
  