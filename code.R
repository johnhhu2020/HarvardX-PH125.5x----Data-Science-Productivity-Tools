B <- 1000
N <- 300


X <- replicate(B, {
  x = sample(c(1, 0), N, prob=c(0.1, 0.9), replace=T)
  mean(x)
})


mean(X)
