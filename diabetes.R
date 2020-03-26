# importing the dataset into the r

my_data <- read.csv ("Diabetes-md.csv", header = TRUE)

# structure of my_data

str(my_data)

class(my_data)

#class type of my_data

typeof(my_data)

#finding the missing data

is.na(my_data) 
 
str(is.na(my_data))

my_data[!complete.cases(my_data),]

my_data$Address[my_data$Address == ""] <- NA

my_data$Daibetes.type[my_data$Daibetes.type == ""] <- NA

my_data$Status[my_data$Status == ""] <- NA


str(my_data)
my_data$Daibetes.type <- as.character(my_data$Daibetes.type)
str(my_data)

# convert back to factor

my_data$Daibetes.type <- as.factor(my_data$Daibetes.type)
str(my_data)

# convert status to character
my_data$Status <- as.character(my_data$Status)
str(my_data)

#convert status back to factor

my_data$Status <- as.factor(my_data$Status)
str(my_data)

# convert address to character

my_data$Address <- as.character(my_data$Address)
str(my_data)
