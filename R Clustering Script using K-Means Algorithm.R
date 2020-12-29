#Include the dplyr library and set working directory
library(dplyr)
setwd("C:/Users/ASUS/Documents/DM/TB")

#Get data from csv, and show first 10 rows of data
data <- read.csv("buddymove_holidayiq.csv", sep = ',')
sample_n(data[2:6],10)

#Run K-Means algorithm in the dataset from column number 2 to 6. 
#Save the result to variable named "clust1"
clust1 <- kmeans(data[2:6],3)
clust1

#Create the plot for column 2 and 3 based on the clustering model.
plot(data[2:3], col = clust1$cluster)

#Give some attracted property to the plot
points(clust1$centers, col = 2:3, pch = 8, cex =2)

#View the data and cluster number in a new table
result <- data.frame(data,clust1$cluster)
View(result)

