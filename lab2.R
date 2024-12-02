library(dplyr)

#task 1
sample_unif_100 = runif(100, min=2, max =4) 
sample_unif_10_4 = runif(10000, min=2, max =4) 
sample_unif_100_6 = runif(1000000, min=2, max =4) 

sample_normal_100 = rnorm(100, mean=3, sd=0.25) 
sample_normal_10_4 = rnorm(10000, mean=3, sd=0.25) 
sample_normal_10_6 = rnorm(1000000, mean=3, sd=0.25) 

l_unif = list(sample_unif_100, sample_unif_10_4, sample_unif_100_6)
for (sample in l_unif) {
  s = sprintf("Mean: %s, sd: %s, min: %s, max: %s", mean(sample), sd(sample), min(sample), max(sample))
  print(s)
}

l_norm = list(sample_normal_100, sample_normal_10_4, sample_normal_10_6)
for (sample in l_norm) {
  s = sprintf("Mean: %s, sd: %s, min: %s, max: %s", mean(sample), sd(sample), min(sample), max(sample))
  print(s)
}

#task 2

l_intervals = list(c(2.5, 3.5), c(2, 4),c(1.5, 4.5) , c(1, 5), c(exp(1), pi))
l_intervals

for(i in l_intervals){
  print(sprintf("%s", i))
  
  print(length(sample_normal_100[between(sample_normal_100, i[1], i[2])])/length(sample_normal_100))
  print(length(sample_normal_10_4[between(sample_normal_10_4, i[1], i[2])])/length(sample_normal_10_4))
  print(length(sample_normal_10_6[between(sample_normal_100,i[1], i[2])])/length(sample_normal_10_6))
  
  print(pnorm(i[2], mean = 3, sd =0.5) - pnorm(i[1], mean = 3, sd =0.5))
  
}

sample_normal_100 = rnorm(100, mean=3, sd=0.5) 
sample_normal_10_4 = rnorm(10000, mean=3, sd=0.5) 
sample_normal_10_6 = rnorm(1000000, mean=3, sd=0.5) 


# task 3

qqnorm(sample_unif_100)
qqnorm(sample_normal_10_4)









