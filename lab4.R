qpois(0.025, lambda = 60)/400
qpois(0.975, lambda = 60)/400

!install.packages("EnvStats")
library("EnvStats")

make_pois_samples <- function(samples, n, lambda){
  result <- c()
  vals <-c()
  for(x in 0:samples){
    sample = rpois(n, lambda)
    result[length(result)+1] = sum(sample)
    vals[length(vals)+1] = (mean(sample) - lambda)/(sd(sample)/sqrt(n))
  }
  

  return(list(result, vals))
}

make_exp_samples <- function(samples, n, rate){
  result <- c()
  vals <-c()
  for(x in 0:samples){
    sample = rpois(n, rate)
    result[length(result)+1] = sum(sample)
    vals[length(vals)+1] = (mean(sample) - 0.5)/(sd(sample)/sqrt(n))
  }
  
  return(list(result, vals))
}


make_unif_samples <- function(samples, n, min, max){
  result <- c()
  vals <-c()
  for(x in 0:samples){
    sample = runif(n, min, max)
    result[length(result)+1] = sum(sample)
    vals[length(vals)+1] = (mean(sample) - (min+max)/2)/(sd(sample)/sqrt(n))
  }
  
  return(list(result, vals))
}

make_pareto_samples <- function(samples, n, shape, location){
  result <- c()
  vals <-c()
  for(x in 0:samples){
    sample = rpareto(n, location, shape)
    result[length(result)+1] = sum(sample)
    vals[length(vals)+1] = (mean(sample) - ((shape*location)/(shape-1)))/(sd(sample)/sqrt(n))
  }
  
  return(list(result, vals))
}


list_pois_10E3 = make_pois_samples(1000, 1000, 3)
list_pois_10E4= make_pois_samples(10000, 1000, 3)
list_pois_10E5 = make_pois_samples(100000, 1000, 3)

list_exp_10E3 = make_exp_samples(1000, 1000, 3)
list_exp_10E4= make_exp_samples(10000, 1000, 3)
list_exp_10E5 = make_exp_samples(100000, 1000, 3)

list_unif_10E3 = make_unif_samples(1000, 1000, 0, 1)
list_unif_10E4= make_unif_samples(10000, 1000, 0, 1)
list_unif_10E5 = make_unif_samples(100000, 1000, 0, 1)


#--------------------------------------------------------------

hist(list_pois_10E3[[1]],20)
hist(list_pois_10E4[[1]],20)
hist(list_pois_10E5[[1]],20)

qqnorm(list_pois_10E3[[1]])
qqnorm(list_pois_10E4[[1]])
qqnorm(list_pois_10E5[[1]])


hist(list_exp_10E3[[1]],20)
hist(list_exp_10E4[[1]],20)
hist(list_exp_10E5[[1]],20)

qqnorm(list_exp_10E3[[1]])
qqnorm(list_exp_10E4[[1]])
qqnorm(list_exp_10E5[[1]])


hist(list_unif_10E3[[1]],20)
hist(list_unif_10E4[[1]],20)
hist(list_unif_10E5[[1]],20)

qqnorm(list_unif_10E3[[1]])
qqnorm(list_unif_10E4[[1]])
qqnorm(list_unif_10E5[[1]])


#--------------------------------------------------------------

list_unif_10E3 = make_pareto_samples(1000, 100, 1.5, 1)
hist(list_unif_10E3[[1]],20)
qqnorm(list_unif_10E3[[1]])

hist(list_unif_10E3[[2]],20)


