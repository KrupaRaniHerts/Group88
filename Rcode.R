<<<<<<< HEAD
skoda_data<-read.csv("skoda.csv")


hist(skoda_data$price, breaks = , main = "Histogram of Resale Price", xlab = "Resale Price", ylab = "Frequency", freq = FALSE)
lines(skoda_data$price, col= "blue")
 
cor.test(skoda_data$mileage, skoda_data$price, method = "spearman", exact = FALSE)

plot(skoda_data$mileage, skoda_data$price, xlab = "mileage of the car", ylab = "Resale Price", main = "Scatterplot of correlation between mileage and Resale price")

abline(lm(skoda_data$price ~ skoda_data$mileage), col = "blue")








=======
skoda_data <- read.csv("skoda.csv")

hist(skoda_data$price)
>>>>>>> dd4a0c8f841e0214d776a92f33f5ee9b7d539686
