#Confidence Intervals formula on the mean
#Case 1:Variance is known

#Two sided-formula 
#max_error<-1/sqrt(size_value)*qnorm((1 - confidence_level) / 2, lower.tail = FALSE)*sigma_value;
#lower_bound <- mean_value - max_error;
#upper_bound <- mean_value + max_error;


#One sided-formula
#max_error<-1/sqrt(size_value)*qnorm(1 - confidence_level, lower.tail = FALSE)*sigma_value;
#lower_bound <- mean_value - max_error;
#upper_bound <- mean_value + max_error;

#Simulation (p.4/26 lecture 8)

num_samples <- 100
sample_size <- 5
# Generate 100 samples from standard normal distribution
samples <- matrix(rnorm(num_samples * sample_size), nrow = num_samples, ncol = sample_size)

# Generate 100 samples from exponential distribution
samples <- matrix(rexp(num_samples * sample_size,0.5), nrow = num_samples, ncol = sample_size)

sample_means <- apply(samples, 1, mean)
sigma<-1;#For normal distribution
sigma<-1/0.5; #For exponential distribution.
confidence_level<-0.95;
# Calculate 95% confidence interval for each sample
max_error<-1/sqrt(length(data))*qnorm((1 - confidence_level) / 2, lower.tail = FALSE)*sigma;
lower_bound <- sample_means - max_error;
upper_bound <- sample_means + max_error;
# Calculate true mean of the standard normal distribution
true_mean <- 0

# Calculate true mean of the exponential distribution
true_mean <- 1/0.5

# Plot the graph
plot(NULL, xlim = c(1, num_samples), ylim = c(min(lower_bound), max(upper_bound)),
     xlab = "Sample", ylab = "Confidence Interval", main = "95% Confidence Interval for Sample Means")
# Add lines for each confidence interval
for (i in 1:num_samples) {
  segments(i, lower_bound[i], i, upper_bound[i])
  points(i, sample_means[i], col = "blue", pch = 19)
}
# Add a horizontal line for the true mean
abline(h = true_mean, col = "red", lwd = 2)
legend("topleft", legend = c("True Mean", "Sample Mean"), col = c("red", "blue"), pch = c(NA, 19))


#Example p.9/26 (lecture 8)
data <- c(91.6, 88.75, 90.8, 89.95, 91.3);
sigma<-1;
mean_value <- mean(data);
confidence_level <- 0.95;
max_error<-1/sqrt(length(data))*qnorm((1 - confidence_level) / 2, lower.tail = FALSE)*sigma;
lower_bound <- mean_value - max_error;
upper_bound <- mean_value + max_error;
cat("95% Confidence Interval on the Mean:", lower_bound, "-", upper_bound, "\n");


#Case 2:Variance is unknown

#Two sided-formula 
#max_error<-1/sqrt(size_value)*qt((1 - confidence_level) / 2, df=size_value-1, lower.tail = FALSE)*sigma_value;
#lower_bound <- mean_value - max_error;
#upper_bound <- mean_value + max_error;


#One sided-formula
#max_error<-1/sqrt(size_value)*qt(1 - confidence_level, df=size_value-1, lower.tail = FALSE)*sigma_value;
#lower_bound <- mean_value - max_error;
#upper_bound <- mean_value + max_error;


#Example p. 18/26 (lecture 8)

confidence_level<-0.95;
mean_value<-13.71;
sigma_value<-3.55;
size_value<-22
#Part a
max_error<-1/sqrt(size_value)*qt((1 - confidence_level) / 2, df=size_value-1, lower.tail = FALSE)*sigma_value;
lower_bound <- mean_value - max_error;
upper_bound <- mean_value + max_error;
cat("95% Confidence Interval on the Mean:", lower_bound, "-", upper_bound, "\n");
#Part b
max_error<-1/sqrt(size_value)*qt(1 - confidence_level, df=size_value-1, lower.tail = FALSE)*sigma_value;
lower_bound <- mean_value - max_error;
cat("95% Lower Confidence Bound on the Mean:", lower_bound);