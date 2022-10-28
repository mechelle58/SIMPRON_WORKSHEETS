#Assignment (setosa)
#Simpron, Mechelle T. BSIT 2-A

#1.Data(iris).

data <- data.frame(iris)
data

#2.Subset the iris set into 3files per species.

subset(iris, Species == 'setosa')


spcs_sepal <- iris$Sepal.Length[1:50]
spcs_sepal

spcb_sepal <- iris$Sepal.Width[1:50]
spcb_sepal

bpetal <- iris$Petal.Width[1:50] 
bpetal 

mpetal <- iris$Petal.Width[1:50]
mpetal

totaLmean <- c(spcs_sepal, spcb_sepal, bpetal, mpetal)
totaLmean

#3. Get the total mean for each species.

t_mean <- mean(totaLmean)
t_mean

#4. Get the mean of each characteristics of the species.
mean(spcs_sepal)
mean(spcb_sepal)
mean(bpetal)
mean(mpetal)