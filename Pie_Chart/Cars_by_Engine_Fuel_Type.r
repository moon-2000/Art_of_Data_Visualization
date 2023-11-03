library("ggplot2")

#importing the dataset 
df_fuel_types <- read.csv('C:/Users/aa10098/Downloads/Data Viz - Projects/Pie Chart/cars_by_fuel_engine_type_data.csv',
                           header = TRUE, 
                           sep = ',')
df_fuel_types

# transfoming the values of number of cars into percentages
percentages <- paste0(round(df_fuel_types$Number.of.Cars/sum(df_fuel_types$Number.of.Cars)*100, 1), "%")
#creating the pie chart
pie.chart <- ggplot(df_fuel_types,
                    aes(x = "", 
                        y = Number.of.Cars, 
                        fill = Engine.Fuel.Type)) +
            geom_bar(stat = "identity",
                     width = 1) +
         # transforming the chart into polar coordinates  
           coord_polar("y") +
           
        # adding the percentage on the chart
           geom_text(aes(label = percentages),
                     position = position_stack(vjust = 0.5)) +

        # adding the title for the pie chart 
           labs(x = NULL,
                 y = NULL, 
                 fill = NULL, 
                 title = "Cars by Engine Fuel Type")
pie.chart

# adding the required colors to the chart
#cbPalette <- c("#E9967A", "#A52A2A", "#FAEBD7", "#FF8C00")
#pie.chart <- pie.chart + scale_fill_manual (values = cbPalette)

# adding the theme 
pie.chart <- pie.chart + theme_classic() +
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        plot.title = element_text(hjust = 0.5))
pie.chart

