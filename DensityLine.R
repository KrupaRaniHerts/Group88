skoda_data <- read.csv("skoda.csv")

# Remove NAs
skoda_data$price <- na.omit(skoda_data$price)

# Check if 'price' is numeric
if (is.numeric(skoda_data$price) && length(skoda_data$price) > 0) {
  # Plot histogram
  hist(skoda_data$price, probability = TRUE, col = "lightblue", border = "black", breaks = 30,main = "Density Curve for Histogram of Resale Price")
  
  # Add density curve
  lines(density(skoda_data$price), col = "red", lwd = 2)
} else {
  cat("Error: 'price' column is not suitable for plotting.")
}

