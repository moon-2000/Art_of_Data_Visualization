library("ggplot2")

#importing the dataset
df_real_estate <- read.csv("C:/Users/aa10098/Downloads/Data Viz - Projects/Histogram/real_estate_data.csv", 
                            header = TRUE, 
                            sep = ',')
df_real_estate

histo_chart <- ggplot(df_real_estate, 
                      aes(x = Price)) +
               geom_histogram(bins = 8,
                              fill = '#596BBF',
                              color = 'white') +
               theme_classic() + 
               ggtitle("Distribution of Real Estate Prices") +
               xlab(" Price in (000' $)")+  
               ylab(" Number of Properties")+
               theme(plot.title = element_text(size = 16,
                                               face = "bold"))
histo_chart

