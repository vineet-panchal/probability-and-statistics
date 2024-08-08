#Generating random numbers
normal_random_numbers <- rnorm(1000, mean = 0, sd = sqrt(1))
uniform_random_numbers <- runif(1000, min = 0, max = 1)
binomial_random_numbers <- rbinom(1000, size = 10, prob = 0.5)

# Sample statistics 
data<-uniform_random_numbers
sample_mean <- mean(data)
sample_median <- median(data)
sample_variance <- var(data)
sample_range <- diff(data)
hist(data, main = "Histogram of Random Numbers", xlab = "Value")

#Normality test
qqnorm(data)
qqline(data, col=2)

#Central limit theorem 
num_samples<-200
sample_size<-1000
sample_data <- runif(sample_size, min = 0, max = 1);
sample_matrix<-sample_data;
sample_means<-mean(sample_data)
for (i in 2:num_samples) {
  sample_data <- runif(sample_size, min = 0, max = 1)
  sample_matrix<-cbind(sample_matrix, sample_data)
  sample_means<-cbind(sample_means, mean(sample_data))
  }
hist(sample_means, main = "Histogram of Sample Means", xlab = "Value")
qqnorm(sample_means)
qqline(sample_means, col=2)