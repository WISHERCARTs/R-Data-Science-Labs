setwd("C:/Users/User/Downloads/Lab3_material")

library(dplyr)
library(ggplot2)

#Null Hypothesis (H0):
#การสูบบุหรี่และการดื่มชาไม่มีความสัมพันธ์กัน

#Alternative Hypothesis (H1):
#การสูบบุหรี่และการดื่มชามีความสัมพันธ์กัน
lady <- read.csv("NutIntake.csv")
head(lady)

str(lady)


# Check the data
glimpse(lady)

totals <- lady %>% group_by(smoke, tea)%>% summarise(total.number = n(), .groups = "drop")

ggplot(totals, aes(x=smoke, y = total.number, fill = tea ))+
  labs(fill = "Tea Consumption") +
  xlab("Smoking Status")+
  geom_bar(stat = "identity", position = "dodge")+
  scale_fill_manual(values = c(no = "red", yes = "blue"))

#Test Chi-square

lady.mat <-  xtabs (~ smoke + tea, data = lady)
lady.mat

chisq.test(lady.mat)
