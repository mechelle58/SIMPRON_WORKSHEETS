#Assignment (virginica)
#Simpron, Mechelle T. BSIT 2-A

#1.Data(iris).

data <- data.frame(iris)
data

#2. Subset the iris set into 3files per species.

subset(iris, Species == 'virginica')


s <- iris$Sepal.Length[101:150]
s

u <- iris$Sepal.Width[101:150]
u

p <- iris$Petal.Length[101:150]
p

o <- iris$Petal.Width[101:150]
o


#3. Get the total mean for each species.
supo <- c(s, u, p, o)
supo

mean(supo)

#4. Get the mean of each characteristics of the species.

mean(s)
mean(u)
mean(p)
mean(o)

