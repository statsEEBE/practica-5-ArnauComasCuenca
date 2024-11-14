#poblacion X<- N(mu,sigma^2)
mu <- 93.5
sigma<- 5.7

curve(dnorm(x,mu,sigma),xlim=c(80,120),col='red')

#A
set.seed(123)
rnorm(4,mu,sigma)

Y<- function(i)sum(rnorm(4,mu,sigma))
Y(1)

Y100000 <- sapply(1:100000,Y)
Y100000
hist(Y100000)
mean(Y100000)
#teoricamente
4*mu
#B
