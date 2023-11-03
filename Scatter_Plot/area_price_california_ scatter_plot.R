library("ggplot2")
library("wesanderson") # color palettes 
# importing the dataset
df_california <- read.csv('C:/Users/aa10098/Downloads/Data Viz - Projects/Scatter Plot/california_data.csv')
df_california

#creating a scatter plot between area and price of California real estate
scatter <-  ggplot(df_california,
                   aes(x = Area..ft..,
                       y = Price)) +
            geom_point(aes(color = factor(Building.Type),
                           size = 2), #size of the points on the scatter
                           alpha = 0.4) + #transparency level for the points
            guides(size = FALSE) +
            labs(color = "Building Type") +
            scale_color_manual(values = wes_palette(name = "Darjeeling1", 
                                          n = 5)) +
 #add and format non data elements:legend, title and axis labels
            theme_classic() + 
            theme(legend.justification = c(0.01, 1), 
                  legend.position = c(0.01,1)) +
            ggtitle("Relationship between Area and Price of California Real Estate") +
            ylab("Price (000's of $)") + 
            xlab("Area (sq. ft.)")
scatter         
# alpha is the transparency level -> to avoid overplotting
# factor -> adding a color according to the building type
# guides helps us to format the legend elements

names(wes_palettes)
          
