# 예제 2번 준비
cylinder <- mtcars$cyl
cylinder

# 예제 2-1

cylinders_ratio <- table(cylinder)
cylinders_ratio # 빈도표

prop.table(cylinders_ratio) # 상대빈도표

# 예제 2-2
barplot(cylinders_ratio, space=0) # barplot을 통해 막대그래프 그리기

# 예제 2-3
pie(cylinders_ratio, col=c("red", "yellow", "blue")) # pie를 통해 원형 그래프 그리기기

# 예제 2-4
prop.table(cylinders_ratio)
# 상대 빈도표 == 요소들을 전부 더했을 때 값이 1이 되는 빈도표.
# %로 표현하고 싶을 경우에는 100을 곱하면 된다.

# 예제 3번 준비
iris_data <- iris[1:50, 1]
iris_data

# 예제 3-1
mean(iris_data) # 평균값 구하기
var(iris_data) # 분산값 구하기
sd(iris_data) # 표준 편차 구하기

# 예제 3-2
median(iris_data) # 중앙값 == Q2
min(iris_data) # 최솟값
max(iris_data) # 최댓값
iris_data_range <- max(iris_data) - min(iris_data) # 범위
iris_data_range

# Q1, Q2, Q3 구하기
Q1 <- quantile(iris_data, 1/4)
Q1

Q2 <- quantile(iris_data, 2/4)
Q2

Q3 <- quantile(iris_data, 3/4)
Q3

IQR <- Q3 - Q1
IQR

# 예제 3-3
boxplot(iris_data) # 상자도표 그리기
hist(iris_data) # 히스토그램 그리기

# 예제 3-4
which(iris_data < Q1-1.5*IQR)
which(iris_data > Q3+1.5*IQR)
