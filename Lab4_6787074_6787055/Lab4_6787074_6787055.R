setwd("C:/Users/User/Downloads/Lab4")
# Load necessary libraries

#Lab4
#Wish Nakthong 6787074
#Punn Poungprom 6787055
library(ggplot2)
library(dplyr)  

library(car)

data <- read.csv("my_data.csv")

hist(data$Score_Count, main = "Histogram of Score_Count", col = "skyblue", xlab = "Score")

qqnorm(subset(data, Group == "Group A")$Score_Count, main = "Q-Q Plot: Group A")
qqline(subset(data, Group == "Group A")$Score_Count, col = "red")



shapiro_A <- shapiro.test(subset(data, Group == "Group A")$Score_Count)
shapiro_B <- shapiro.test(subset(data, Group == "Group B")$Score_Count)
shapiro_C <- shapiro.test(subset(data, Group == "Group C")$Score_Count)

shapiro_A
# reject 


shapiro_B
# reject 

shapiro_C
# reject 

wilcox_result <- wilcox.test(Score_Count ~ Group, data = subset(data, Group %in% c("Group A", "Group B")))
wilcox_result

t_ab <- t.test(Score_Count ~ Group, data = subset(data, Group %in% c("Group A", "Group B")))
t_ac <- t.test(Score_Count ~ Group, data = subset(data, Group %in% c("Group A", "Group C")))
t_bc <- t.test(Score_Count ~ Group, data = subset(data, Group %in% c("Group B", "Group C")))

t_ab

t_ac

t_bc

t_gender <- t.test(Score_Count ~ Gender, data = subset(data, Group == "Group A"))
t_gender

levene_result <- leveneTest(Score_Count ~ Group, data = subset(data, Group %in% c("Group A", "Group B")))

levene_result

var_result <- var.test(Score_Count ~ Group, data = subset(data, Group %in% c("Group A", "Group B")))
var_result

t.test(Score_Count ~ Group, data = subset(data, Group %in% c("Group A", "Group B")), var.equal = TRUE)


t_genderB <- t.test(Score_Count ~ Gender, data = subset(data, Group == "Group B"))
#reject hipothesis 0.02772<0.05 
# เพศมีผลต่อคะแนนของ group B เพราะว่า p value น้อยกว่า 0.05

t_genderB

t_genderC <- t.test(Score_Count ~ Gender, data = subset(data, Group == "Group C"))
#accept hipothesis 0.2094>0.05
t_genderC 

# เพศไม่มีผลคะแนนต่อกลุ่ม C เพราะว่า p value > 0.05