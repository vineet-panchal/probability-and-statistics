#Normal distribution

#Calculate Φ-values
x<-2.1
pnorm(x)
# Calculate the probability P(X < 2), where X~N(3,1)
mean <- 3
variance <- 1
probability <- pnorm(2, mean = mean, sd = sqrt(variance))
# Calculate z-scores
alpha<-0.005
cum_prob <- 1-0.005
z_score <- qnorm(cum_prob)


#Plot of the Φ,f function
x <- seq(-4, 4, length.out = 1000)
#Plot the CDF
cdf_standard <- pnorm(x)
plot(x, cdf_standard, type = "l", main = "CDF of Standard Normal Distribution", xlab = "x", ylab = "CDF")
#Plot the pdf
density_standard <- dnorm(x)
density_custom <- dnorm(x, mean = 1, sd = sqrt(0.5))
plot(x, density_standard, type = "l", col = "blue", lwd = 2, main = "Comparison of Normal Distributions", xlab = "x", ylab = "Density")
lines(x, density_custom, col = "red", lwd = 2)
legend("topright", legend = c("Standard Normal", "Mean = 2, Variance = 0.5"), col = c("blue", "red"), lty = 1, lwd = 2)

#Solve example in 24/36, lecture 5
mean <- 10
variance <- 4
#Part a-Solution
Part_a<-pnorm(11, mean = mean, sd = sqrt(variance))-pnorm(9, mean = mean, sd = sqrt(variance))
#Part b-Solution
cum_prob<-0.98;
z_score <- qnorm(cum_prob);
Part_b<-sqrt(variance)*z_score+mean;
#Alternative solution for part b
Part_b<-qnorm(0.98,mean,sd=sqrt(variance));


#Solution to Practice Problem 3
lambda<-1.5
x<-2
ans<-ppois(x, lambda)
