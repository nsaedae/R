#날짜 : 2022/04/20
#이름 : 김철학
#내용 : Ch07.EDA와 데이터 정제 - EDA 실습 교재 p194

df_exam <- read.csv('../file/exam.csv')
df_exam

#View
View(df_exam)

#head, tail
head(df_exam)
tail(df_exam)

#dim
dim(df_exam)

#str
str(df_exam)

#summary
summary(df_exam)

#sum
sum(df_exam$math)

#mean
mean(df_exam$english)

#교재 p194 실습 - 실습용 데이터 가져오기
#교재 p194 실습 - 전체 데이터 보기

#교재 p195 실습 - 데이터의 앞부분과 뒷부분 보기

#교재 p196 실습 - 데이터 셋 구조 보기

#교재 p197 실습 - 다양한 방법으로 데이터 셋 조회하기
