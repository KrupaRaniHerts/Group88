# Load the Skoda dataset from a CSV file
skoda_data <- read.csv("skoda.csv")

# View the first two rows of the dataset to understand its structure
head(skoda_data, 2)

# Subset the data to include only cars with Automatic or Manual transmission
# and Petrol or Diesel fuel types
sd4 <- subset(skoda_data, 
              (transmission == "Automatic" | transmission == "Manual") & 
                (fuelType == "Petrol" | fuelType == "Diesel"))

# Create a contingency table of fuel types (rows) vs transmission types (columns)
pt3 <- table(sd4$fuelType, sd4$transmission)

# Perform a chi-square test of independence on the contingency table
chisq.test(pt3)

# Calculate the column-wise percentages (proportions of each fuel type by transmission type)
Percentages3 <- prop.table(pt3, margin = 2) * 100

# Create a stacked bar plot to visualize the fuel type proportions for each transmission type
barplot(
  Percentages3,                  # Data to plot (proportions)
  col = c("blue", "pink"),       # Colors for Petrol and Diesel
  xlab = "Transmission Type",    # Label for the x-axis
  ylab = "Percentage",           # Label for the y-axis
  main = "Stacked Bar of Fuel Type Proportions by Transmission Type", # Plot title
  ylim = c(0, 100),              # Set y-axis limits from 0 to 100
  legend.text = c("Petrol", "Diesel"), # Legend labels for the bar colors
  args.legend = list(x = "topright")  # Position of the legend
)

