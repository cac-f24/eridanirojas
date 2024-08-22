install.packages("DescTools")
library(DescTools)
data <- c(3.4,3.6,3.6,3.6,3.6,3.7,3.8,3.8,3.9,4.0,4.1,4.2,4.8,4.9,5.0,5.1,5.1,5.2,5.2,5.2,5.4,5.5,5.6,5.7,6.2,6.6,7.0,7.6,7.8,8.2,8.5,8.9,9.3,9.3,9.9,10.7,10.7,11.5,12.1,12.6,13.1,13.4,13.8,14.2,15.2,17.1,20.6,25.5)
mean(data)
Mode(data)
Median(data)
mean(data, trim=0.1)
large <- which(data >= 10)
large = data[large]
x = length(large)
n = length(data)
p = x/n
small <- which(data < 10)
small = data[small]
x_small = length(small)
p_small = x_small/n
proportions <- c(p_small, p)
barplot(proportions, ylim = c(0, 1))