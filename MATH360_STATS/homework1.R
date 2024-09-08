at_most <- c()
for (p in pairs) {
     if (p[1] <=5) {
         at_most <- append(at_most, p[2])
     }
 }
at_most
sum(at_most)
at_most_num = sum(at_most)
at_most_num/sum
at_least <- c()
for (p in pairs) {
     if (p[1] >=5) {
         at_least <- append(at_least, p[2])
     }
 }
at_least
at_least_num = sum(at_least)
at_least_num/sum
between_5_10 = c()
for (p in pairs) {
     if (p[1] >=5 & p[1] <=10) {
         between_5_10 <- append(between_5_10, p[2])
     }
 }
between_5_10
between_5_10_num = sum(between_5_10)
between_5_10_num/sum
strict_5_10 <- c()
for (p in pairs) {
     if (p[1] >5 & p[1] <10) {
         strict_5_10 <- append(strict_5_10, p[2])
     }
 }
strict_5_10
strict_num = sum(strict_5_10)
strict_num/sum