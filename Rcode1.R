skoda_data<-read.csv("skoda.csv")

hist(skoda_data$price, main = "Histogram of Resale Price")

cor.test(skoda_data$year, skoda_data$price, method = "spearman", exact = FALSE)

plot(skoda_data$year, skoda_data$price, xlab = "year of the car make", ylab = "Resale Price", main = "Scatterplot of correlation between price and year")

abline(lm(skoda_data$price ~ skoda_data$year), col = "green")


