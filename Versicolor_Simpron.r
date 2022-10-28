#Assignment (versicolor)
#Simpron, Mechelle T. BSIT 2-A

#1.Data(iris).

data(iris)
iris

#2.Subset the iris set into 3files per species.

subset(iris, Species == 'versicolor')


laba <- iris$Sepal.Length[51:100]
laba

dako <- iris$Sepal.Width[51:100]
dako

laba_2 <- iris$Petal.Length[51:100]
laba_2

dako_2 <- iris$Sepal.Width[51:100]
dako_2

#3. Get the total mean for each species.

Ttlm <- c(laba,dako,laba_2,dako_2)
Ttlm

mean(Ttlm)
#4. Get the mean of each characteristics of the species.

mean(laba)
mean(dako)
mean(laba_2)
mean(dako_2)


