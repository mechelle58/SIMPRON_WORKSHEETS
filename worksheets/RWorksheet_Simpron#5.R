#SIMPRON, MECHELLE T. BSIT 2A
#WORKSHEET 5

require(ggplot2)
require(dplyr)
library(ggplot2)

install.packages("ggplot2")
#1 The table shows the enrollment of BS in Computer Science, SY 2010-2011.

#A. Plot the data using a bar graph. Write the codes and copy the result.
qplot()
library(ggplot2)

df <- data.frame("course"=c("1st", "2nd", "3rd", "4th"), "sy"= c(80, 75, 70, 60))
ggplot(df) + geom_col(aes(course, sy))

sy <- c(80, 75, 70, 60)
course <- c("1st", "2nd", "3rd", "4th")

#B. Using the same table, label the barchart with
#Title = ” Enrollment of BS Computer Science
#horizontal axis = “Curriculum Year” and
#vertical axis = “number of students”

pl <- barplot(sy, main= "Enrollment of BS Computer Science",
              xlab = "Curriculum Year", ylab = "number of
              students")

#2. The monthly income of De Jesus family was spent on the following:
#60% on Food, 10% on electricity, 5% for savings, and
#25% for other miscellaneous expenses.

#A. Create a table for the above scenario. Write the codes and its result.
food <- 60
electricity <- 10
savings <- 5
misc <- 25

exp <- data.frame(food, electricity, savings,misc)
exp

#B. Plot the data using a pie chart. Add labels, colors and legend.
#Write the codes and its result.

expn <- c(60, 10, 5, 25)
pie(expn, main = "Expenses", col = rainbow(length(expn)),
    labels = c("food", "electricity", "savings", "misc"))

expn_label <- round(expn/sum(expn) * 100, 1)
expn_label <- paste(expn_label, "%", sep = "")

pie(expn, main = "Expenses", col = rainbow(length(expn)),
    labels = expn_label, cex=0.8)
legend(1, c("food", "electricity", "savings", "misc"),
       cex = 0.8, fill = rainbow(length(expn)))

#3. Open the mtcars dataset.

data("mtcars")

#A. Create a simple histogram specifically for mpg (miles per gallon) variable.
#Use $ to select the mpg only. Write the codes and its result.

carss  <- mtcars$mpg

hist(carss, main = "Histogram for mpg")

#B. Colored histogram with different number of bins.
#hist(mtcars$mpg, breaks=12, col="red"). Note: breaks= controls the number of bins

hist(carss, breaks=12, col="red")

#C. Add a Normal Curve

lms<-hist(carss, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(carss),max(carss),length=40)
yfit<-dnorm(xfit,mean=mean(carss),sd=sd(carss))
yfit <- yfit*diff(lms$mids[1:2])*length(carss)
lines(xfit, yfit, col="blue", lwd=2)

#4. Open the iris dataset. Create a subset for each species.

#A. Write the codes and its result.

data("iris")

data_i <- data.frame(iris)
data_i

s_data <- subset(data_i, Species == 'setosa')
s_data

data_r <- data.frame(iris)
data_r
v_data <- subset(data_r, Species == 'versicolor')
v_data

data_is <- data.frame(iris)
data_is
vg_data <-subset(data_is, Species == 'virginica')
vg_data

#B. Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.

setosa <- colMeans(s_data[sapply(s_data,is.numeric)])
setosa

versicolor <- colMeans(v_data[sapply(v_data,is.numeric)])
versicolor

virginica <- colMeans(vg_data[sapply(vg_data,is.numeric)])
virginica

#C. Combine all species by using rbind()
svv <- rbind(setosa, versicolor, virginica)
svv

#D. From the data in 4-c: Create the barplot().
#Write the codes and its result.

barplot(svv, beside =TRUE, main = "Iris Mean",
        xlab = "Characterisics", ylab = "Mean Scores",
        col = c("red", "green", "blue"))
