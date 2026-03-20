# 예제 3-7 준비
x <- mtcars$wt
y <- mtcars$mpg

# 예제 3-7-(1)
plot(x,y) # wt와 mpg의 산점도 그리기

# 예제 3-7-(2)
lm(y~x)
#mpg = a + b * wt 애서 a, b 구하기

# 예제 3-7-(3)
abline(lm(y~x))
#최적직선을 wt와 mpg의 산점도 위에 그리기기

# 예제 3-7-(4) 
cor(x, y)
# 상관계수 구하기

# 예제 3-9 준비
iris_species = iris$Species
iris_sepal_length = iris$Sepal.Length
library(gmodels)

# 예제 3-9-(1)
aggregate(iris_sepal_length~iris_species, data = iris, FUN = mean) # 평균
aggregate(iris_sepal_length~iris_species, data = iris, FUN = sd) # 표준 편차

# 예제 3-9-(2)
boxplot(iris_sepal_length~iris_species)
# species 집단 별로 상자도표 그림

# 예제 3-10 준비
titanic_data <- Titanic[1:3, "Male", "Child",]

# 예제 3-10-(1)
CrossTable(titanic_data)
# 객실과 생존여부에 대한 교차표 그리기

# 예제 3-10-(2)
plot(titanic_data)
#모자이크 도표표

pt <- prop.table(titanic_data, 1) * 100
barplot(pt, beside = T, legend=c("1등실", "2등실", "3등실"))
#막대그래프
