#Lab2
#Wish Nakthong 6787074
#Punn Poungprom 6787055

#getwd()  # ดู working directory ปัจจุบัน
#list.files()  # ดูไฟล์ทั้งหมดใน directory นี้
setwd("C:/Users/User/OneDrive/Desktop/learn R")


otter_data <- read.csv("otter.csv")
str(otter_data)  # ตรวจสอบโครงสร้างของข้อมูล
summary(otter_data)  # ตรวจสอบค่าเบื้องต้น

library(dplyr)

library(ggplot2)

#Data visualization
compensation <- read.csv("compensation.csv")
compensation

otter_data
ggplot(otter_data,aes(x=animal, y=body.temp, fill = animal))+
  geom_boxplot()+
  geom_point(position =   position_jitterdodge(jitter.width = 0.15),color = c("Grey"),alpha= 0.5)+
  ylab("Body temperature (celsius)") +
  xlab("Animal")+
  theme_classic() 

ggplot(otter_data,aes(x=animal, y=body.temp, fill = active))+
  geom_boxplot()+
  geom_point(position =   position_jitterdodge(jitter.width = 0.15),color = c("Grey"),alpha= 0.5)+
  ylab("Body temperature (celsius)") +
  xlab("Animal")+
  theme_classic() 

ggplot(otter_data,aes(x=body.temp, y=heart.rate, colour = active,fill=active,alpha = 0.2))+
  geom_jitter()+
  geom_smooth(method = lm, fullrange = TRUE)+
  xlab("Body temperature (celsius)") +
  ylab("Hearth rate (beats per minute)")+
  theme_classic()



