# Setting the working directory
setwd("E:/SLIIT_Bacholer/_2_Year_sem1/Probability&Statistic/Lab8")
getwd()

# Load the dataset
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(data)

# Question 1: Population statistics
popmn <- mean(Weight.kg.)
pop_dev <- sd(Weight.kg.)

# view Population Mean
popmn         
# view Population Standard Deviation
pop_dev       

# Question 2: 25 random samples of size 6 with replacement
set.seed(123)

samples <- matrix(nrow = 6, ncol = 25)

for (i in 1:25) {
  samples[, i] <- sample(Weight.kg., size = 6, replace = TRUE)
}

# Calculate sample means standard deviations
s.means <- apply(samples, 2, mean)
# Calculate standard deviations
s.dev <- apply(samples, 2, sd)

# View sample means 
s.means
# View sample standard deviations
s.dev

# Question 3: Mean and SD of the sample means
samplemean <- mean(s.means)
sampledev <- sd(s.means)

# Mean of Sample Means
samplemean
# SD of Sample Means
sampledev
# True Population Mean
popmn 
# True Population SD
pop_dev     

