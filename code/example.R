library("ggplot2")
data<-mtcars

png(filename="fig/plot1.png")
library(ggplot2)
ggplot(data, aes(x=mpg, y=qsec , color=cyl)) +
    geom_point(size = 5) + labs(x="Miles per galon", 
                                y = "Seconds to 1/4 mile")  
dev.off()