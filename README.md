# Group88

Group ID -- A88
DataSet ID -- DS137
CSV file -- skoda.csv

Data Variables -- model, year, price, transmission, mileage, fuelType, tax, mpg, engineSize





Our Initial Analysis
-----------------------------------------------------------------------------------------------
Research Question -- what factors significantly influence the resale price of the used skoda cars?

Dependent Variable -- Resale Price
Independent Variable -- can be model, year, price, transmission, mileage, fuelType, tax, mpg
thinking logically the key factors to look at for a used car would be year, mileage. 

Correlation Analysis
Is there a correlation between the year of the car make and resale price?
Is there a correlation between the mileage and resale price?

Write Rcode 





Changed Analysis After Receiving Feedback
----------------------------------------------------------------------------------------------------------------------
Research  -- Are the proportions of fuelType (Petrol vs. Diesel) among Manual cars same as those among Automatic cars?

Dependent Variable: Fuel Type (Petrol Vs Diesel)

Dependent Variable Data Type: Nominal

Independent Variable: Transmission Type (Manual vs Automatic)

Independent Variable Data Type: Nominal

Null Hypothesis: The proportions of Petrol vs. Diesel cars are the same for both Manual and Automatic transmission types.

Alternative Hypothesis: The proportions of Petrol vs. Diesel cars differ between Manual and Automatic transmission types.

Methodology -- Loaded the data to Rstudio, Created RScript and ran the Chisq() test comparing the proportions providing the statistical outcome
Also plotted bar chart to compare the percentages and results.

Rscript - 

skoda_data<-read.csv("skoda.csv")
head(skoda_data,2)

sd4 <- subset(skoda_data, 
              (transmission == "Automatic" | transmission == "Manual") & 
                (fuelType == "Petrol" | fuelType == "Diesel"))


pt3<-table(sd4$fuelType, sd4$transmission)

chisq.test(pt3)
Percentages3<-prop.table(pt3, margin = 2) * 100

barplot(Percentages3, 
        col = c("blue", "pink"), 
        xlab = "Transmission Type", 
        ylab = "Percentage", 
        main = "Stacked Bar of Fuel Type Proportions by Transmission Type", 
        ylim = c(0, 100), 
        legend.text = c("Petrol", "Diesel"),
        args.legend = list(x = "topright"))

outcome:

Table of Car Counts
         
	Automatic Manual
  
Diesel       487   1127
  
Petrol       609   2624

Percentages: 

	Automatic   Manual
  
Diesel  44.43431 30.04532
  
Petrol  55.56569 69.95468

Chisq test output

Pearson's Chi-squared test with Yates' continuity correction

data:  pt3

X-squared = 78.418, df = 1, p-value < 2.2e-16

By the p-value we reject null hypothesis as the proportions are not same for both transmission types and they differe markedly.






