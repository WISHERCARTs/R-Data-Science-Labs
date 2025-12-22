#Lab1
#Wish Nakthong 6787074
#Punn Poungprom 6787055
#wd = working directory
setwd("C:/Users/User/OneDrive/Desktop/learn R")

#r calculate
2+3
10+4
log10(10)
sqrt(16)
sin(pi/2)
sin(45*pi/180)

# Create vectors
vec0 <- vector(mode = "numeric", length = 10) # Create a vector filled with 0
vec0

vec1 <- c(1:10, 15, 20)                      # Create a vector with specified values
vec1
length(vec1) 
mean(vec1) 
summary(vec1)

# Create and manipulate matrices
mat <- matrix(nrow = 3, ncol = 4) # Create an empty matrix

mat[2, 4] <- 8                   # Assign value to a specific element
mat[1, ] <- c(1:4)               # Assign values to the first row
mat[, 3] <- c(5:7)               # Assign values to the third column
mat[2, 1:2] <- c(5, 6)           # Assign values to specific elements
mat[3, c(1:2, 4)] <- c(9, 10, 11) # Assign multiple values
mat

ncol(mat)
summary(mat)

colnames(mat) <- c("test1", "test2", "test3", "test4")
mat

# Create and manipulate arrays
arr <- array(dim = c(2, 3, 4))  # Create a 3D array
arr

arr[1, 3, 2] <- 5              # Assign value to a specific element
arr[1, 1, 1] <- 8
arr

# Import data
envi <- read.csv("environment.csv", header = TRUE) # Reads a CSV file into a data frame

# Explore data
str(envi)             # View the structure of the data

mean(envi$rainfall.m) # Calculate the mean of a column
is.na(envi$rainfall.m) # Check for missing values
which(is.na(envi$rainfall.m)) # Find indices of missing values
mean(envi$rainfall.m, na.rm = TRUE) # Mean excluding missing values

head(envi, 10)        # View the first 10 rows
mean(envi$rainfall.m) # Calculate the mean of a column

envi$site <- as.character(envi$site)
envi$site[1] <- "Site.A"
envi
envi$site[2:10] <- paste0("site." , letters[2:10])

