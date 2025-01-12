p1<-c(0.1,2.28,2.06,4.33,4.14,3.15,0.43,1.39,0.08,1.91,4.88)
p2<-c(2.62,5.15,1.48,2.73,0.51,2.10,4.33,7.36,3.2,1.67,2.33)
p3<-c(-1.06,4.15,2.53,2.85,1.98,0.84,-1.27,2.27,0.96,5.79,1.27)
p4<-c(-0.76,0.8,-1.74,3.06,1.31,2.68,1.73,-0.29,-1.32,0.5,-0.15)
p5<-c(1.91,3.62,1.86,2.71,3.47,1.1,1.54,2.98,4.88,3.13,3.06)
p6<-c(3.25,4.68,3.01,4.82,3.53,4.07,3.27,4.65,2.89,1.39,2.82)
p7<-c(2.02,2.63,2.25,3.62,3.73,5.45,3.09,2.75,3.21,0.2,4.84)
p8<-c(0.6,2.33,5.08,6.77,4.51,3.86,2.74,3.66,5.85,-0.23,0.46)


# task 1
confidence_interval1 <- function(sample, variance, level){
  critical_z = qnorm((1-level)/2, mean = 0, sd = 1, lower.tail = FALSE)
  interval_start <- mean(sample) - critical_z * (sqrt(variance)/ length(sample))
  interval_end <- mean(sample) + critical_z * (sqrt(variance)/ length(sample))
  
  return(c(interval_start,interval_end))
}


#task 2
confidence_interval2 <- function(sample, level){
  critical_t = qt((1-level)/2, df=length(sample)-1, lower.tail = FALSE)
  interval_start <- mean(sample) - critical_t * (sqrt(var(sample))/ length(sample))
  interval_end <- mean(sample) + critical_t * (sqrt(var(sample))/ length(sample))
  
  return(c(interval_start,interval_end))
}

#task3
#CI for the mean (known variance)
#95% confidence
confidence_interval1(p1, 4, 0.95)
confidence_interval1(p2, 4, 0.95)
confidence_interval1(p3, 4, 0.95)
confidence_interval1(p4, 4, 0.95)

#99% confidence
confidence_interval1(p1, 4, 0.99)
confidence_interval1(p2, 4, 0.99)
confidence_interval1(p3, 4, 0.99)
confidence_interval1(p4, 4, 0.99)

#CI for the mean (unknown variance)
#95% confidence
confidence_interval2(p5,0.95)
confidence_interval2(p6, 0.95)
confidence_interval2(p7, 0.95)
confidence_interval2(p8, 0.95)

#99% confidence
confidence_interval2(p5, 0.99)
confidence_interval2(p6, 0.99)
confidence_interval2(p7, 0.99)
confidence_interval2(p8, 0.99)

#task 4

ci_p1 <- confidence_interval1(p1, 4, 0.95)
ci_p2 <- confidence_interval1(p2, 4, 0.95)

ci_p5 <- confidence_interval2(p5, 0.95)
ci_p6 <- confidence_interval2(p6, 0.95)

ci_p1
ci_p2
ci_p2[1] - ci_p1[1]
ci_p2[2] - ci_p1[2]


#task5

z <- function(s_mean, n, val, sd){
  z_score = (s_mean - val)/sd*sqrt(n)
  return(z_score)
}

pnorm(
    z(
      mean(p2)- mean(p1), 
      11, 
      0, 
      2
      )
  )

t =
  z(
    mean(p6)- mean(p5), 
    11, 
    0,
    sd(p6) - sd(p5)
)

pt(
  df = mean(length(p6), length(p5)),
  t
)

pnorm(z(mean(p1),length(p1), 1.89, 2))



