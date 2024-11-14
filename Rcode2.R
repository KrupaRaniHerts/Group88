skoda_data<-read.csv("skoda.csv")

hist(skoda_data$price, main = "Histogram of Resale Price")

cor.test(skoda_data$engineSize, skoda_data$price, method = "spearman", exact = FALSE)

plot(skoda_data$engineSize, skoda_data$price, xlab = "engineSize of the car", ylab = "Resale Price", main = "Scatterplot of correlation between EngineSize and Resale price")

abline(lm(skoda_data$price ~ skoda_data$engineSize), col = "red")

