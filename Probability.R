#Welcome to R!

#Calculator
factorial(6)
factorial(6)/(factorial(6-3)*factorial(3))
choose(6,3)

#Objects
#R works with objects, which are characterized by their name and content. 

x <- 1
mode(x)
length(x)
A <- "bacteria";
b<-1==0
print(b)
compar1 <- TRUE;
my_matrix <- matrix(data = c(1, 2, 3, 4), nrow = 1, ncol = 4)
help("matrix")
dim(my_matrix)

#Command sample
help("sample")
#Flipping a coin one time
sample(c(0, 1),1);
#Flipping a coin n times
n<-10000
coin_flips<-sample(c(0, 1), n, replace = TRUE);
num_heads <- sum(coin_flips == 0);

#Reading and writing data 
vector1<-c(1,2,3,4)
vector2<-c(-1,-2,-3,-4)
my_matrix <- cbind(vector1, vector2)
write.table(my_matrix, "my_object.txt", row.names = FALSE, col.names = FALSE)
read_data <- read.table("my_object.txt")
read_data[,1]==vector1

#Practise Problem 
sample(c(letters,LETTERS,seq(0, 9, by = 1)),8)
num_codes <- 100
codes <- replicate(num_codes, paste0(sample(c(letters, LETTERS, seq(0, 9, by = 1)), 8, replace = TRUE), collapse = ""))
#Outcomes in Event A
num_only_letters <- sum(grepl("^[A-Za-z]+$", codes))
#Outcomes in Event B
num_only_numbers <- sum(grepl("^[0-9]+$", codes))