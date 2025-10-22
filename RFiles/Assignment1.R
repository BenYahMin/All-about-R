# 10-3-2025
# Benjamin Kithome SCM223-0166/2024
# Assignment for EDA

# square root, log to a certain base and natural log
my_number <- 16.08 # This is the number that am going to work with all through

square_root <- sqrt(my_number) # This looks for the square root
log_base2 <- log(my_number, base = 2) # calculates the log to base two.
natural_log <- log(my_number)
#the reason i dont specify the base is because it.
#defaultly calculates the natural log. Specify the log also wont be a problem.

# Code to calculate the area of a circle
diameter <- 70 # I have chosen the area of the circle to be 70
radius <- diameter / 2 # radius is the one required which is half the diameter

# Pi is reserved as pi
area_ofcircle <- pi * radius ^ 2 # This is the formula to calculate the area

# cat is used to call variables
cat("Square root of 16.08 is", square_root)
cat("The logarithm to base 2 of 16.08 is;", log_base2)
cat("The natural log of 16.08 is:", natural_log)
cat("The area of the circle with diameter as 70 is:", area_ofcircle)
cat("Done!")
