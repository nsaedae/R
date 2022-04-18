#날짜 : 2022/04/18
#이름 : 김철학
#내용 : R자료구조 - DataFrame 실습 교재 p69

# 데이터프레임
a <- c(1, 2)
b <- c(3, 4)
c <- c(T, F)

df1 <- data.frame(a, b, c)
df1


df2 <- data.frame(num  = c(1, 2, 3),
                  name = c('김춘추', '김유신', '장보고'),
                  age  = c(23, 21, 32))

df2

# 데이터프레임 출력
df2$name[1]
df2$name[3]

# R 내장 데이터프레임 및 데이터프레임 함수
iris

View(iris)    # 데이터프레임 표로 출력
class(iris)   # 데이터프레임 유형 확인
head(iris)    # 데이터프레임 상위 6개 출력
tail(iris)    # 데이터프레임 하위 6개 출력
str(iris)     # 데이터프레임 속성(컬럼) 정보 확인
dim(iris)     # 데이터프레임 크기 확인
names(iris)   # 데이터프레임 속성 확인
summary(iris) # 데이터프레임 요약 통계

result <- subset(iris, Petal.Length >= 2) # 데이터프레임 부분 추출
View(result)

# CSV 파일을 이용한 데이터프레임 생성
dataset <- read.csv('../file/iris.csv')
View(dataset)

exam <- read.csv('../file/exam.csv')
View(exam)

#############################################################################
#교재 p72 실습 - 벡터를 이용한 데이터프레임 객체 생성하기
#교재 p72 실습 - matrix를 이용한 데이터프레임 객체 생성하기
#교재 p72 실습 - 텍스트 파일을 이용한 데이터프레임 객체 생성하기

#교재 p73 실습 - CSV 파일을 이용한 데이터프레임 객체 생성하기
#교재 p73 실습 - 데이터프레임 만들기
#교재 p73 실습 - 데이터프레임의 칼럼명 참조하기

#교재 p74 실습 - 데이터프레임의 자료구조, 열수, 행수, 칼럼명 보기
#교재 p74 실습 - 요약통계량 보기

#교재 p75 실습 - 데이터프레임 자료에 함수 적용하기
#교재 p75 실습 - 데이터프레임의 부분 객체 만들기
#교재 p75 실습 - 두 개의 조건으로 부분 객체 만들기

#교재 p76 실습 - student 데이터프레임 만들기
#교재 p76 실습 - 자료형과 자료구조 보기

#교재 p77 실습 - 두 개 이상의 데이터프레임 병합하기

#교재 p77 실습 - galton 데이터셋 가져오기
install.packages('UsingR')
library(UsingR)

galton

#교재 p77 실습 - galton 데이터셋 구조 보기
str(galton)
dim(galton)
View(galton)
