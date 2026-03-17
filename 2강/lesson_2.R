# 명목 척도 : 순서가 없음. 범주를 표현함. (성별, 질병 여부 등등)
# 순서 척도 : 순서는 의미가 있지만, 그 순서의 차이는 측정 불가능, ex) ㅗ디디선호도 조사
# 비척도 : 0이 정말 의미를 가짐. 차이와 비율 모두 측정 가능(몸무게, 키, 면적 등등)

# 결국 크게 나누면 범주형, 연속형 자료로 나뉜다.
# 필요한 경우마다 각각 골라서 사용 한다

help(mtcars)
# 명목 척도 : vs(엔진 모양이 어떤지), am(수동인지 자동인지)
# 순서 척도 : cyl(실린더 수), gear(기어비), carb(기화기의 수)
# 비척도 : mpg(연비), cyl(실린더 수), disp(엔진 전체 실린더의 움직인 양), hp(마력),
#          drat(섀시 비율), wt(무게), qsec(1/4마일까지 걸린 시간), carb(기화기의 수)

# But, 순서척도, 비척도에서 경우의 수가 적으면, 명목 척도로 취급될 수 있음.
# cyl의 경우, 4,6,8이라는 3개의 경우의 수 밖에 없기 때문에 순서 척도로 볼 수 있음

am <- mtcars$am
table(am)
barplot(table(am), space = 0, xlab = c("Auto", "Manual"))
pie(table(am), c("Auto", "Manual"), col=c("orange", "blue"))

data <- subset(mtcars, cyl == 4, "am")

data <- subset(mtcars, cyl == 6, "am")

x <- mtcars$hp
x
table(x)
barplot(table(x))
y <- cut(x, breaks = 6) # breaks < 몇등분 할건지 정하는 숫자
table(y)
barplot(table(y))
prop.table(table(y))
barplot(prop.table(table(y)), space = 0.01)

hist(x, freq = F) # 히스토그램의 면적의 합은 1이며, 상대빈도는 막대의 면적에 해당함.
#범주형 = 막대 그래프, 연속형 = 히스토그램 < 중요

boxplot(x)
#박스 그래프 그리기, 박스 모양으로 나와있는 부분이 IQR값이다.
#박스에 검은 줄이 그려져 있는데, 그 값이 제2사분위 값이다.

#IQR값은 제3사분위값에서 제1사분위값을 뺀 값이다.
#크기순으로 줄 세웠을때 1/4번째에 있는 값을 제1사분위, 3/4번째에 있는 값을 제3분위라고 한다.
#제2사분위의 경우, 중앙값(median)이라고 부른다.

test <- quantile(x)
test
class(test)
str(test)
mode(test)
test <- table(test)
test
IQR_test <- list(test)
IQR_test
