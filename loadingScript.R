install.packages("readxl")
install.packages("mongolite")
library(readxl)
library(mongolite)

setwd('C://Users//KeweiJI//Desktop')

my_data <- read_excel("Customer_Behavior_Data_to_Improve_Customer_Retention.xlsx")


mongo <- mongo(collection="my_test",db="7250",url="mongodb://localhost")

mongo$insert(my_data)