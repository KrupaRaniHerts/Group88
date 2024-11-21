skoda_data<-read.csv("skoda.csv")

sd4 <- subset(skoda_data, 
              (transmission == "Automatic" | transmission == "Manual") & 
                (fuelType == "Petrol" | fuelType == "Diesel"))


pt3<-table(sd4$fuelType, sd4$transmission)

chisq.test(pt3)
Percentages3<-prop.table(pt3, margin = 2) * 100

barplot(Percentages3, 
        beside = TRUE, 
        col = c("blue", "pink"), 
        xlab = "Transmission Type", 
        ylab = "Percentage", 
        main = "Stacked Bar of Fuel Type Proportions by Transmission Type", 
        ylim = c(0, 100), 
        legend.text = c("Petrol", "Diesel"),
        args.legend = list(x = "topright"))




