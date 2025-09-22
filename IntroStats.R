###########################################################
# An Introduction to Statistical Analysis of Big Data in R
## 2025 Boot Camp - 25th September
## by Hannah Götsch (hannah.goetsch@uni-tuebingen.de)
###########################################################

data ("iris") # Load built-in dataset

# iris dataset gives the measurements in centimeters of the variables 
# sepal length, sepal width, petal length and petal width, 
# for 50 flowers from each of 3 species of iris: 
# Iris setosa, versicolor, and virginica.

head(iris) # Inspect the dataset

# Summary statistics in basic R
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
summary(iris$Sepal.Length)

# Visual summaries in basic R
hist(iris$Sepal.Length)
     #breaks = 20,
     #main="Histogram of sepal length",
     #xlab="sepal length in cm")
boxplot(iris$Sepal.Length)
boxplot(Sepal.Length ~ Species, data=iris)

# One-Sample t-test
?t.test()
iris_setosa <- iris[iris$Species == "setosa",]
t.test(iris_setosa$Sepal.Length, mu=mean(iris$Sepal.Length))
iris_versicolor <- iris[iris$Species == "versicolor",]
t.test(iris_versicolor$Sepal.Length, mu=mean(iris$Sepal.Length))

# Two-Sample t-test
hist(iris_setosa$Sepal.Length)
shapiro.test(iris_setosa$Sepal.Length) # check normal distribution
hist(iris_versicolor$Sepal.Length)
shapiro.test(iris_versicolor$Sepal.Length) # check normal distribution
t.test(Sepal.Length ~ Species, data=iris[iris$Species %in% c("setosa","versicolor"),])

###########################################################

boxplot(Sepal.Length ~ Species, data=iris, 
        main="Boxplots",
        ylab="sepal length in cm",
        xlab="iris-species")

hist(iris_setosa$Sepal.Length,
     main="Histogram for iris setosa",
     xlab="sepal length in cm")
