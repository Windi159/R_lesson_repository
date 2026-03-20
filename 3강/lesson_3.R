boxplot(hp~cyl, data = mtcars, xlab = "cylinder", ylab = "horse power")

boxplot(mtcars$hp~mtcars$cyl, xlab = "cylinder", ylab = "horse power")

aggregate(hp~cyl, data=mtcars, mean)
aggregate(hp~cyl, data = mtcars, quantile)

boxplot(hp~am, data = mtcars, xlab = "0 = automatic 1 = manual", ylab = "horse power")

aggregate(hp~am, data = mtcars, mean)

boxplot(hp~cyl+am, data=mtcars, xlab = "cylinder + is automatic", ylab = "horse power")

aggregate(hp~cyl+am, data = mtcars, FUN=median)
aggregate(hp~cyl+am, data = mtcars, FUN=min)
aggregate(hp~cyl+am, data = mtcars, FUN=max)

boxplot(hp~am+cyl, data = mtcars, xlab = "cylinder + is automatic", ylab = "horse power")

boxplot(decrease ~ treatment, data=OrchardSprays)

iris
names(iris)
boxplot(Sepal.Length~Species, data = iris)
aggregate(Sepal.Length~Species, data = iris, mean)

boxplot(Sepal.Width~Species, data = iris)
aggregate(Sepal.Width~Species, data = iris, quantile)
aggregate(Sepal.Width~Species, data = iris, sd)
aggregate(Sepal.Width~Species, data = iris, mean)

mytable <- Titanic[1:3, "Female", "Adult", ]
mytable

library(gmodels)
CrossTable(mytable)