#PMF and CDF in R
x<-c(1,2,3,4) #The possible values of the random variable
prob<-c(0.2,0.3,0.4,0.1) #Probability of each outcome
barplot(prob,names.arg=x, xlab="Oucome",ylab="Probability")

#Compute the cumulative probabilities 
cum_prob<-cumsum(prob)
plot(x,cum_prob,type="s",xlab="outcome",ylab="cumulative probability")

#Mean and Variance of discrete random varaibles

x<-c(1,2,3,4) #The possible values of the random variable
prob<-c(0.2,0.3,0.4,0.1) #Probability of each outcome
expectation_of_x<-weighted.mean(x,prob)#Mean of X
variance_of_x<-weighted.mean(x^2,prob)-weighted.mean(x,prob)^2


#Bernouli trial and binomial distribution

n<-10 #number of trials
prob_success<-0.01 #probability of sucesss 
x<-sample(c(0, 1), size = n, replace = TRUE, prob = c(1 - prob_success, prob_success)) #n bernouli trials
y<-count_ones <- sum(x == 1) #the number of succesful bernouli trials 

# Parameters of the binomial distribution
x <- 0:10  # Possible number of successes
size <- 10  # Number of trials
prob <- 0.5  # Probability of success on each trial

# Calculate the PMF values for the binomial distribution
pmf_values <- dbinom(x, size, prob)

# Calculate the CDF values for the binomial distribution
cdf_values <- pbinom(x, size, prob)

# Plotting PMF using barplot
barplot(pmf_values, names.arg = x, col = "blue", 
        main = "PMF of Binomial Distribution", 
        xlab = "Number of Successes", ylab = "Probability")
# Plotting CDF 
plot(x,cdf_values,type="s",xlab="outcome",ylab="cumulative probability")


# Geometric distribution 
p <- 1/2.5  # Probability of success
k <- 1:3 # Possible values of the random variable

# Geometric distribution PMF
geometric_pmf <- (1 - p)^(k - 1) * p

# Geometric distribution CDF
geometric_cdf <-cumsum(geometric_pmf)