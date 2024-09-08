barplot(proportions)
barplot(proportions, ylim = c(0, 1))

data <- c(3.4, 3.6, 3.6, 3.6, 3.6, 3.7, 3.8, 3.8, 3.9, 4.0, 4.1, 4.2, 4.8, 4.9, 5.0, 5.1, 5.1, 5.2, 5.2, 5.2, 5.4, 5.5, 5.6, 5.7, 6.2, 6.6, 7.0, 7.6, 7.8, 8.2, 8.5, 8.9, 9.3, 9.3, 9.9, 10.7, 10.7, 11.5, 12.1, 12.6, 13.1, 13.4, 13.8, 14.2, 15.2, 17.1, 20.6, 25.5)
mean(data)
Mode(data)

library(DescTools)
Median(data)

large <- which(data >= 10)

x = c(2:11)
y = c(8, 20, 26, 18, 12, 8, 5, 7, 2, 1)

plot(x, y)
text(x, y, labels = x, cex = 0.7, pos = 1)

plot(x, y, xlim = c(0, 15), ylim = c(-5, 30))
text(x, y, labels = y, cex = 0.7, pos = 1)

pairs = Map(c, x, y)
at_most <- c()

for (p in pairs) {
  if (p[1] <= 5) {
    at_most <- append(at_most, p[2])
  }
}

sum(at_most)

at_least <- c()
for (p in pairs) {
  if (p[1] >= 5) {
    at_least <- append(at_least, p[2])
  }
}

at_least_num = sum(at_least)
between_5_10 = c()

for (p in pairs) {
  if (p[1] >= 5 & p[1] <= 10) {
    between_5_10 <- append(between_5_10, p[2])
  }
}

strict_5_10 <- c()
for (p in pairs) {
  if (p[1] > 5 & p[1] < 10) {
    strict_5_10 <- append(strict_5_10, p[2])
  }
}

strict_num = sum(strict_5_10)

data <- c(1, 1, 2, 3, 1, 1, 3, 2, 0, 5, 3, 3, 1, 3, 2, 4, 7, 0, 2, 3, 0, 4, 2, 1, 3, 1, 1, 3, 4, 1, 2, 3, 2, 2, 8, 4, 5, 1, 3, 1, 5, 0, 2, 3, 2, 1, 0, 6, 4, 2, 1, 6, 0, 3, 3, 3, 6, 1, 2, 2)

hist_data <- hist(data, main = "Histogram with Values on Bars", xlab = "Value", ylab = "Frequency", col = "lightblue")

counts <- hist_data$counts
breaks <- hist_data$breaks

for (i in 1:length(counts)) {
  x_pos <- (breaks[i] + breaks[i + 1]) / 2
  y_pos <- counts[i]
  text(x_pos, y_pos, labels = counts[i], pos = 1)
}

frequency <- table(data)
relative_frequency <- frequency / sum(frequency)

my_list <- c(6, 7, 16, 30, 43, 26, 22, 12, 3)
sum = sum(my_list)

rel_freqs <- c()
for (i in my_list) {
  rel_freqs <- append(rel_freqs, (i / sum))
}

x <- c(1:9)
plot(x, rel_freqs)

my_vector <- c(14.6, 12.8, 17.5, 14.4, 12.5, 10.9, 9.4, 8.1)
mean(my_vector)
Median(my_vector)
mean(my_vector, trim = 0.125)

urban <- c(6.0, 5.0, 11.0, 33.0, 4.0, 5.0, 80.0, 18.0, 35.0, 17.0, 23.0)
farm <- c(2.0, 12.0, 13.0, 8.0, 9.0, 6.0, 5.0, 20.0, 7.0, 8.9, 23.0, 8.7, 1.0, 2.0, 0.5)

mean(urban)
mean(farm)

Median(urban)
Median(farm)

mean(farm, trim = 0.1)
mean(urban, trim = 0.1)

data <- c(385, 350, 355, 361, 378, 421, 323, 396, 400, 374, 376, 371, 364, 366, 364, 329, 335, 395, 391, 368, 378, 356, 352, 409, 333, 398)
data <- sort(data)
x <- c(1:26)
plot(x, data)
mean(data)
Median(data)

data <- c(6.5, 12.0, 14.9, 10.0, 10.7, 7.9, 21.9, 12.5, 14.5, 9.2)
mean(data)
Median(data)
sort(data)

data <- c(49, 78, 100, 36, 92, 85, 56, 100, 17, 28)
mean(data, trim = 0.2)
Median(data)

IDT <- c(28.1, 31.2, 13.7, 46.0, 25.8, 16.8, 34.8, 62.3, 28.0, 17.9, 19.5, 21.1, 31.9, 28.9, 60.1, 23.7, 18.6, 21.4, 26.6, 26.2, 32.0, 43.5, 17.4, 38.8, 30.6, 55.6, 25.5, 52.1, 21.0, 22.3, 15.5, 36.3, 19.1, 38.4, 72.8, 48.9, 21.4, 20.7, 57.3, 40.9)
hist(IDT, breaks = seq(0, 100, by = 10))
