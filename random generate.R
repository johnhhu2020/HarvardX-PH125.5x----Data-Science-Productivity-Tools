library(tidyverse)



B <- 10000
N <- 600
p <- 0.2


X = sample(c(0, 1), size=N, replace=T, prob=c(1-p, p))
X_hat = mean(X)
SE_hat = sqrt(X_hat*(1-X_hat)/N) 
SE_hat


SE_hat <- replicate(B, {
  X = sample(c(0, 1), size=N, replace=T, prob=c(1-p, p))
  X_hat = mean(X)
  SE_hat = sqrt(X_hat*(1-X_hat)/N) 
})

mean(SE_hat)



inside <- replicate(B, {
  X = sample(c(0, 1), size=N, replace=T, prob=c(1-p, p))
  X_hat = mean(X)
  SE_hat = sqrt(X_hat*(1-X_hat)/N) 
  between(p, X_hat-2*SE_hat, X_hat+2*SE_hat)
})


mean(inside)