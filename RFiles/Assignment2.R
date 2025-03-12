# Date; 10-3-2025
# Benjamin Kithome
# Chapter: extracting values

# This is my set of data to work with.
my_values <- c(112, 102, 83, 84, 99, 90, 77, 112, 81, 121)

# line below extracts values in the respective places 4 3 5 and 10
extract_values <- my_values[4, 3, 5, 10]
# next extracts only values that are greater than 70
values_greaterthan70 <- my_values[my_values > 70]

# cat calls the respective variables
cat("4th 3rd 5th and 10th elements respectively:", extract_values)
cat("Values greater than or equal to 70:", values_greaterthan70)