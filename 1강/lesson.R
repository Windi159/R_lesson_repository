#R은 C처럼 타입이 정해져있음.
#변수에 값을 할당할 때, 변수의 할당 된 타입이 아닌 경우, 변수의 할당된 타입으로 변환됨.

# 일반 사칙연산
2+3
2^3 # 제곱(A^B = A의 B승)
1/2
3-2*1+4

#삼각함수
sin(pi) # sin값 (pi는 기본으로 저장되어있는 값이며, 원주율임.)
cos(pi) # cos값
tan(pi) # tan값

#지수, 로그
sqrt(2) # 루트2
exp(1) # e의 1승
log(exp(1)) #로그 e의 1승 = 1 
log(10,base=10)
log(10, base=10) == log10(10) #같은 의미

abs(-1) # 절댓값
factorial(5) # factorial(n) == n * (n-1) * (n-2) * ... 1 팩토리얼
choose(5,2) # choose(n1, n2) == n1! / n2! * (n2+1)! n1개에서 n2개를 고른다는 의미

# 새 변수 만들기
x <- 3 # x = 3
#x = 3 해당 방법도 가능, 함수안에서 선언하지 않은 변수를 사용할 것이라면 <- 사용.
# =는 <- 보다 인터프리터가 우선적으로 해석해야 할 것으로 인식한다고 함.
# x <- y = 5 는 인터프리터가 x에 y값을 넣고, 그 뒤에 y에 5를 할당하는것으로 인식함.
# 따라서 위와 같은 방식으로 쓸 것이라면 x = y <- 5로 해야 함. 아니라면 <-로 통일.
x + 4 # 3 + 4
e <- exp(1) # e의 1승값을 e라는 변수에 저장.
e^2 # e의 2승

#환경 변수? 관리 함수들
ls() # 환경 변수들 보여줌
rm(x) # 환경 변수에서 x를 지운다
ls() # x를 지웠으니, 이젠 x가 보이지 않음
rm(list=ls()) # 변수 1개만 지울게 아니라면, list를 사용. 리스트에 ls를 넣었으니 전체 파일 삭제

#벡터 생성
vec <- 3:13
vec
vec <- seq(3,13,0.1)
vec <- 2.2 * vec
vec
length(vec) #벡터의 길이 => vec의 길이는 변하지 않았기 때문에 처음 선언했던 3.0 ~ 13.0까지 총 101개
vec[2] #벡터의 두번째 성분인 6.82이 출력됨
c(1,3,4)
vec[c(1,3,4)] # 벡터의 1,3,4번째 성분인 6.60, 7.04, 7.26이 출력됨

#매트릭스 < 구성요소는 전부 한가지 타입으로 되어있음.
x <- c(1,2,3) # *중요* 여기서 보일 땐 행벡터이지만, 실제론 열벡터임
y <- c(4,5,6)

xy <- c(x,y) # 벡터 붙이기 (단순히 붙이는 역할, 첫번째 변수의 마지막 요소 뒤에 다음 변수의 요소들이 붙음)
A <- cbind(x,y) # 열 붙이기 (세로로 붙여줌)
B <- rbind(x,y) # 행 붙이기 (가로로 붙여줌)

A[1,2] # A[1,2] == 4
A[,2] # A[,2] == A의 2열 전체
B[1,] # B[1,] == B의 1행 전체

A %*% B # 행렬끼리 곱하기 (3*3 크기)
B %*% A # 행렬끼리 곱하기 (2*2 크기)

c(1,3,5,0) # 벡터 만들기
A <- matrix(c(1,3,5,0), 2, 2) # 메트릭스 만듦
# 대신 메트릭스에서 구성요소가 전부 통일 되어야 함
t(A) # 행과 열 교환하기
solve(A) # 역행렬 구하기

# built-in data 사용하기
library() # 사용 가능한(깔려 있는) 라이브러리 보기
library(datasets) # datasets 라이브러리 불러오기
data() # datasets 라이브러리에 있는 함수 (쓸 수 있는 데이터 보기)

# data.frame (숫자, 문자 모두 가능. 대신 한 열은 전부 한 종류의 타입이여야 함)
mtcars # datasets 라이브러리에 있는 데이터 중 하나
help(mtcars) # mtcars의 데이터 설명 보기
head(mtcars) # 첫째줄의 데이터 일부분 보기
names(mtcars) # 열 이름 보기
summary(mtcars) # 기본 기술 통계 가져오기(최대, 최솟값 , 사분위수)
mtcars$am # am 열(해당 데이터 프레임의 변수) 가져오기
mtcars$hp # hp 열(해당 데이터 프레임의 변수) 가져오기
table(mtcars$am) # 빈도표 만들기
boxplot(mtcars$hp) # 상자 도표 만들기
summary(mtcars$hp) # 기술 통계 구하기
boxplot(hp~am, data=mtcars)
# am 0과 1의 집단 별로 hp(마력)에 대한 상자 도표 그리기

#변수(열) 선택하기 또는 data.frame 쪼개기
head(mtcars)
mtcars[1:5,] # 1 ~ 5번 행 가져오기
mtcars[,2] # 2열 가져오기
mtcars$am
mtcars$hp
mtcars2 <- subset(mtcars, vs==1) # 행 (표본) 선택
mtcars2
mtcars3 <- subset(mtcars, vs==1 & am == 0) # 행 (표본) 선택
mtcars3
mtcars4 <- mtcars[,c("mpg", "hp")] # 열 (변수) 선택
mtcars4

#새 변수 만들기
mtcars$hp2 <- mtcars$hp + 3 # hp 행에 3을 더한 후 hp2 열에 저장, hp2열 생성
head(mtcars)

#변수 지우기
mtcars$hp2 <- NULL # hp2에 NULL값을 넣어 hp2를 지움
head(mtcars)

# 절대경로를 사용하여 데이터 파일 읽기, 데이터 파일(csv)로 내보내기
write.csv(mtcars, "C:/temp/mtcars.csv") # mtcars를 절대경로로 csv파일로 보내기
mtcars2 <- read.csv("C:/temp/mtcars.csv") # 다시 읽어오기
mtcars2

# 1. 상대경로를 사용하여 파일 읽고 쓰기
write.csv(mtcars, "./1강./mtcars.csv") # mtcars를 상대경로로 csv파일로 보내기
mtcars2 <- read.csv("./1강./mtcars.csv") # 다시 읽어오기

# 2. 원하는 폴더로 변경 후 파일 읽고 쓰기
getwd() # 현재 폴더 확인
Myfolder <- "C:/temp" # 작업 폴더 정하기
setwd(Myfolder) # 작업 폴더 변경하기
getwd() # 확인
