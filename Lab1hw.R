##Lab Hw#1

library(ggplot2);
library(ggpubr);

#Question 1A
data = read.csv(file="C:/Users/doria/OneDrive/Desktop/Storage/School/AppliedStatistics/Lab1/chap02q19FireflySpermatophoreMass.csv", sep=";", header=T);

freq<-table(data);
freqTable<-as.data.frame(freq);

ggplot(data=data, aes(x=spermatophoreMass)) +
  geom_bar(fill="lightblue") + 
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(angle = 45, vjust = 0.5),
        axis.title.y = element_text(size=30),
        axis.title.x = element_text(size=30),
        plot.title=element_text(size=40)) +
  labs(title="Photinus ignitus Spermatophore Mass Distribution", 
       x="Spermatophore Mass",
       y="Frequency") +
  scale_x_continuous(breaks = unique(data$spermatophoreMass));

#Question 2C
col1 <- c("1995","1996","1997","1998","1999","2000","2001","2002","2003","2004","2005");
col2 <- c("53","54","55","56","58","60","63","64","62","62","62");
df_bmi <- data.frame(col1, col2);

ggplot(df_bmi, aes(x=col1, y=col2)) +
  geom_line(group = 1,color="red") +
  geom_point() +
  labs(title="Percentage of Adults over 18 with a BMI greater than 25", 
       x="Year",
       y="Percentage (%)");