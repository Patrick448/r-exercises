library(rcompanion) 

install.packages("rcompanion")
#task #0

pbinom(11, 20, 0.8)

f <- function(x){
  (x-16)/sqrt(3.2)
}

pbinom(f(11), 20, 0.8)
pbinom(f(11.5), 20, 0.8)
pbinom(f(12), 20, 0.8)

#------------------------

s <- function(i){
  sum(rbinom(10^i, 1, (3/5)))
}

list_s <- function(samples, i){
  result <- c()
  for(x in 0:samples){
    result[length(result)+1] = s(i)
  }
  
  return(result)
}

s1 = list_s(100000,1)
s2 = list_s(100000,2)
s3 = list_s(100000,3)
#s4 = list_s(100000,4)
#s5 = list_s(100000,5)

f2 <- function(x, i){
  (x - (3/5)*(10^i))/sqrt((3/5)*(1-3/5)*(10^i))
}


hist(sapply(s1,function(x) x/10^1))
hist(sapply(s2,function(x) x/10^2),100)
hist(sapply(s3,function(x) x/10^3),500)
#hist(sapply(s4,function(x) x/10^4))
#hist(sapply(s5,function(x) x/10^5))

hist(sapply(s1,function(x) f2(x, 1)))
hist(sapply(s2,function(x) f2(x, 2)), 100)
hist(sapply(s3,function(x) f2(x, 3)), 500)
#hist(sapply(s4,function(x) f2(x, 4)))
#hist(sapply(s5,function(x) f2(x, 5)))



#-----------------------

qqnorm(sapply(s1,function(x) x/10^1))

qqnorm(sapply(s2,function(x) x/10^2))

qqnorm(sapply(s3,function(x) x/10^3))

#task= perform the same with i=5 and p = 3/100000


