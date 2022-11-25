#SIMPRON, MECHELLE T. BSIT 2A
#WORKSHEET 4

#1.  The table below shows the data about shoe size and height. Create a data frame.

s_size1 <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5,
                9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5)
hght1 <- c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0,
             72.0, 64.0, 74.5, 67.0, 71.0, 71.0)
gender1 <- c('f', 'f', 'f', 'f', 'm', 'f', 'f', 'f', 'm',
             'f', 'm', 'f', 'm', 'm')
s_size2 <- c(13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5,
                8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)
hght2 <- c(77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 
             67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0)
gender2 <- c('m', 'm', 'f', 'f', 'm', 'f', 'f', 'm', 'm', 
             'f', 'm', 'm', 'm', 'm')

szhg_data <- data.frame(s_size1, hght1, gender1, s_size2, 
                     hght2, gender2)
szhg_data

#A. Describe the data.
#The data shows the shoe sizes, gender and height. 

#B. Find the mean of shoe size and height of the respondents.

s <- cbind(s_size1,s_size2)
s
mean(s)

h <- cbind(hght1,hght2)
h
mean(h)

#C. Is there a relationship between shoe size and height? Why?
# Yes, shoe size and height have relationship because the taller the height the bigger the shoes size.

#2 Construct character vector months to a factor with factor() and assign the result to
#factor_months_vector. Print out factor_months_vector and assert that R prints out
#the factor levels below the actual values.

month <- c("March","April","January","November","January",
           "September","October","September","November","August",
           "January","November","November","February","May","August",
           "July","December","August","August","September","November","February","April")

factor_month <- factor(month)
factor_month

factor_months_vector <- factor_month
factor_months_vector

#3. Then check the summary() of the months_vector and factor_months_vector. 
#Interpret the results of both vectors. Are they both equally useful in this case? - YES

summary(factor_month)
summary(factor_months_vector)

#4. Create a vector and factor for the table below.
Direction <- c("East", "West", "North")
Direction
Frequency <- c(1, 4, 3)
Frequency

vtor <- data.frame(Direction, Frequency)
vtor

factor_vtor <- factor(Direction)
factor_vtor

new_order_data <- factor(factor_vtor,levels = c("East","West","North"))
new_order_data

#5 Enter the data below in Excel with file name = import_march.csv

#A. Import the excel file into the Environment Pane using read.table() function.
setwd("C:/Users/Naomi/Documents/simpronworksheet")
getwd()

m_data <- read.table("import_march.csv", sep=",", header=TRUE, stringsAsFactor=FALSE);
m_data

#B. View the dataset. Write the code and its result.
View(m_data)
