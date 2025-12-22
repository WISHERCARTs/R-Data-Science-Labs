# Lab1
# Wish Nakthong 6787074
# Punn Poungprom 6787055

# Import data
envi <- read.csv("compensation.csv", header = TRUE) # Reads a CSV file into a data frame

str(envi)
glimpse(envi)

# compareVersiontran(envi)
# 1) โหลดไฟล์compensation.csv เข้าเป็น DataFrame ในชื่อ compensation

# 2) ดูโครงสร้างข้อมูลโดยใช้ glimpse()
# 3) ค านวณค่าเฉลี่ยของ Root หากข้อมูลมี NA ให้ แทนที่ด้วย 0
# 4) เลือกข้อมูล ที่มีค่าผลไม้ที่มากกว่า 80 หรือ น้อยกว่า 20 แล้วเก็บไว้ในตัวแปรชื่อ lo_hi_fruit
# 5) ท าการสร้างคอลัมน์ใหม่โดยตั้งชื่อว่า sqrt_fruit และค่าที่ใส่คือค่าสแควรูทของ Fruitและเก็บในตัว
# แปรชื่อ compensation_trans จากนั้นแสดงผล 15 แถวแรก
# 6) แสดงผล compensation_trans โดยเรียงล าดับข้อมูลในคอลัมน์ที่สร้างในข้อ5 จากมากไปน้อย
# 7) เรียงข้อมูล Fruitจากน้อยไปมาก โดยเลือกข้อมูลที่ค่า Fruit > 50 ทั้งนี้ให้ท าทั้งแบบใช้pipe และ
# without pipe

getwd()

compensation <- read.csv("compensation.csv")
glimpse(compensation)
compensation <- compensation %>% replace(is.na(.), 0)
mean(compensation$Root)
lo_hi_fruit <- filter(compensation, Fruit > 80 | Fruit < 20)
lo_hi_fruit
compensation_trans <- mutate(lo_hi_fruit, sqrt_fruit = sqrt(Fruit))
slice(compensation, 1:15)
compensation_trans <- compensation_trans %>%
  filter(Fruit > 50) %>%
  arrange(Fruit)
compensation_trans
