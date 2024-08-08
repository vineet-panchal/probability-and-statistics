#Confidence interval on the variance 
#Two sided-formula 
#lower_bound <- (size_value-1)*sample_variance/qchisq((1-confidence_level)/2, df=size_value-1, lower.tail = FALSE)
#upper_bound <- (size_value-1)*sample_variance/qchisq(1/2+confidence_level/2, df=size_value-1, lower.tail = FALSE)

#One sided-formulas
#lower_bound <- (size_value-1)*sample_variance/qchisq(1-confidence_level, df=size_value-1, lower.tail = FALSE)
#upper_bound <- (size_value-1)*sample_variance/qchisq(confidence_level, df=size_value-1, lower.tail = FALSE)

#calculating sample variance
data<-c(1,0,1,0);
n<-length(data);
sample_variance<-1/(n-1)*sum(data-mean(data)^2);
var(data);

#Example p. 7/42 (lecture 9)
sample_variance<-0.0153;
size_value<-20;
confidence_level<-0.95;
upper_bound <- (size_value-1)*sample_variance/qchisq(confidence_level, df=size_value-1, lower.tail = FALSE)
cat("95% Upper confidence Interval on standard deviation:", sqrt(upper_bound));



#Conclusion of hypothesis testing
hypothesis_test_conclusion <- function(P_value, significance_level) {
  if (significance_level < P_value) {
    cat("Fail to reject the null hypothesis at significance level", significance_level, "\n")
  } else {
    cat("Reject the null hypothesis at significance level", significance_level, "\n")
  }
}


#Hypothesis test on the mean
#Case 1: Variance is known
#z_0<-(mean_value-mean0)/(sigma_value/sqrt(size_value))

#H_1: μ ≠ mean0
#P_value<-2*(1-pnorm(abs(z_0)))

#H_1: μ > mean0
#P_value<-1-pnorm(z_0)

#H_1: μ < mean0
#P_value<-pnorm(z_0)


#Example p. 27/42 (lecture 9)
#a)
z_0<--1.84
P_value<-1-pnorm(z_0);
#b)
mean_value<-6
mean0<-5;
sigma_value<-1;
size_value<-9;
z_0<-(mean_value-mean0)/(sigma_value/sqrt(size_value))
P_value<-1-pnorm(z_0);



#Hypothesis test on the mean
#Case 2: Variance is unknown
#t_0<-(mean_value-mean0)/(sigma_value/sqrt(size_value))

#H_1: μ ≠ mean0
#P_value<-2*(1-pt(abs(t_0), df=size_value-1))

#H_1: μ > mean0
#P_value<-1-pt(t_0, df=size_value-1)

#H_1: μ < mean0
#P_value<-pt(t_0, df=size_value-1)

#Example p. 7/17 (lecture 10)
mean_value<-0.83725;
sigma_value<-0.02456;
mean0<-0.82;
size_value<-15;
t_0<-(mean_value-mean0)/(sigma_value/sqrt(size_value));
P_value<-1-pt(t_0, df=size_value-1);
cat("The P_value is", P_value);


#Hypothesis test on the variance
#chisq_0<-(size_value-1)*sample_variance/variance0

#H_1: σ^2≠ variance0
#p_value1<-2*pchisq(chisq_0, df=size_value-1)
#p_value2<-2*(1-pchisq(chisq_0, df=size_value-1))
#P_value<-ifelse(p_value1 >= 0 & p_value1 <= 1, p_value1, p_value2)

#H_1: σ^2 > variance0
#P_value<- 1-pchisq(chisq_0, df=size_value-1)

#H_1: σ^2 < variance0
#P_value<-pchisq(chisq_0, df=size_value-1)


#Example p. 11/17 (lecture 10)
#a)
chisq_0<-25.2;
size_value<-20;
p_value1<-2*pchisq(chisq_0, df=size_value-1)
p_value2<-2*(1-pchisq(chisq_0, df=size_value-1))
P_value<-ifelse(p_value1 >= 0 & p_value1 <= 1, p_value1, p_value2)
cat("The P_value is", P_value);