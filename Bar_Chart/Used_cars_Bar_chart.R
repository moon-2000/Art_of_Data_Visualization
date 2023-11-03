# reloading important libraries
library("ggplot2")

# importing the dataset
car_data <- read.csv('C:/Users/aa10098/Downloads/Data Viz - Bar Chart/used_cars_data.csv',
                      header = TRUE,
                      sep = ",")
car_data

# creating the bar chart
bar_chart <- ggplot(car_data, 
                    aes(x = Brand, 
                             y = Cars.Listings)) +
             geom_bar(stat = "identity",
                      width = 0.6, 
                      color = "navy",
                      fill = "navy") + 
             ggtitle("Cars Listings by Brand") + 
             theme_classic()+
             theme(axis.text.x = element_text(angle = 45, 
                                              hjust = 1))
bar_chart

