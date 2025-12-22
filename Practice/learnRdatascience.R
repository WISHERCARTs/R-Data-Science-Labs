x <- 100
y <- 200
x + y

My_name <- "Wish"
my_age <- 18

income <- 25000
expense <- 24000
saving <- income - expense
print(saving)

# 2 data types

income <- 25000
friend <- "Wish"
movie_lover <- T

my_date <- as.Date("2025-02-06")
class(my_date)

# data structures
# c อารมณ์เหมือน vector

friends <- c("Wish", "Game", "Alift", "Wai") # index ใน R จะเริ่มเลข 1
ages <- c(18, 20, 18, 19)
movie_lover <- c(T, T, F, T)

df <- data.frame(friends, ages, movie_lover)

# subset data
df[2:4, ]
df[, 1:2]
df[2:4, 1]
df[c(2, 4), c(1, 3)]

# create a new column
df$friends # ใช้ชื่อ column แทน index
df$ages
df$movie_lover

df$double_agrs <- df$ages * 2
df$double_agrs <- NULL # NULL = ไม่มีไรเลย

# write file csv
write.csv(df, "Tumlenlen.csv")

# basic statistics
df$ages

mean(df$ages)


# 4/5 control flow + function
add_two_nums <- function(a, b) {
    return(a + b)
}

