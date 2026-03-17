# 예제 2번 준비
cylinder <- mtcars$cyl
cylinder

# 예제 2-1

cylinders_ratio <- table(cylinder)
cylinders_ratio # 빈도표

cylinders_relative_ratio <- cylinders_ratio / length(cylinder)
cylinders_relative_ratio # 상대빈도표

# 예제 2-2
barplot(cylinders_ratio, space=0) # barplot을 통해 막대그래프 그리기

# 예제 2-3
pie(cylinders_ratio, col=c("red", "yellow", "blue"))

# 예제 2-4
percentage_of_cylinders_ratio <- cylinders_relative_ratio * 100
percentage_of_cylinders_ratio

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

# Q1, Q2, Q3 구하기
q_iris_data <- quantile(iris_data)
q_iris_data

Q1 <- q_iris_data["25%"]
Q2 <- q_iris_data["50%"]
Q3 <- q_iris_data["75%"]
IQR <- Q3 - Q1

boxplot(iris_data) # 상자도표 그리기
hist(iris_data) # 히스토그램 그리기

as.numeric(q_iris_data["100%"]) > as.numeric(Q3 + 1.5 * IQR)
# 단순 값만 비교해야하기 때문에 as.numeric 사용
# Q3 + 1.5 * IQ은 5.8 이고, 최대값도 5.8이지만, 5.8을 초과한 값이 outliner임
as.numeric(q_iris_data["0%"]) < as.numeric(Q1 - 1.5 * IQR)

boxplot.stats(iris_data)$out
