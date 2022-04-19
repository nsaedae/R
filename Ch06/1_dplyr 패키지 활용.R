#날짜 : 2022/04/19
#이름 : 김철학
#내용 : Ch06.데이터 조작 - dplyr 패키지 실습 교재 p169

install.packages('dplyr')
library(dplyr)

df_exam <- read.csv('../file/exam.csv')
df_exam
View(df_exam)


#select
rs1 <- df_exam[, 3]
rs1

rs2 <- df_exam %>% select(math)
rs3 <- df_exam %>% select(english)
rs4 <- df_exam %>% select(english, science)
rs5 <- df_exam %>% select(everything())

rs2;rs3;rs4;rs5

#filter
r1 <- df_exam %>% select(everything()) %>% filter(class==1)
r1

#영어점수 60점 이상 그리고 80점 미만
r2 <- df_exam %>% filter(english >= 60 & english < 80)
r2

#과학점수 60점 이상 또는 80점 이하
r3 <- df_exam %>% filter(science >= 60 | science <= 80)
r3

#class가 1반 학생의 수학점수만 출력
r4 <- df_exam %>% filter(class==1) %>% select(math)
r4

#arrange
res1 <- df_exam %>% arrange(math)
res1

res2 <- df_exam %>% select(everything()) %>% arrange(desc(math))
res2

#mutate - 파생변수 생성
result1 <- df_exam %>% mutate(total = math + english + science) 
result1
View(result1)

result2 <- result1 %>% mutate(mean = total / 3)
result2
View(result2)

result3 <- result2 %>% mutate(grade = ifelse(mean >= 90, 'A', 
                                      ifelse(mean >= 80, 'B',
                                      ifelse(mean >= 70, 'C',
                                      ifelse(mean >= 60, 'D', 'F')))))

result3
View(result3)

#summarise
df_exam %>% summarise(sum(math))
df_exam %>% summarise(mean(math))

#group_by
gr1 <- df_exam %>% group_by(class) %>% summarise(sum(math))
gr1

gr2 <- df_exam %>% group_by(class) %>% summarise(mean(math), mean(english), mean(science))
gr2

#inner_join
df_teacher <- data.frame(class = c(1,2,3,4,5),
                         name = c('김유신', '김춘추', '장보고', '강감찬', '이순신'))
df_teacher
View(df_teacher)

joined <- inner_join(df_exam, df_teacher, by='class')
joined
View(joined)

#교재 p169 실습 - iris 데이터셋을 대상으로 %>% 연산자를 이용하여 함수 적용하기

#교재 p170 실습 - dplyr패키지와 hflight 데이터셋 설치

#교재 p171 실습 - hflight 데이터셋 구조 보기
#교재 p171 실습 - tbl_df() 함수 사용하기

#교재 p172 실습 - hflights_df를 대상으로 특정일의 데이터 추출하기

#교재 p173 실습 - hflights_df를 대상으로 지정된 월의 데이터 추출하기

#교재 p174 실습 - hflights_df를 대상으로 데이터 정렬하기

#교재 p175 실습 - hflights_df를 대상으로 지정된 칼럼 데이터 검색하기
#교재 p175 실습 - hflights_df를 대상으로 칼럼의 범위로 검색하기

#교재 p176 실습 - hflights_df에서 출발 지연시간과 도착 지연시간의 차이를 계산한 컬럼 추가하기

#교재 p177 실습 - mutate()함수에 의해 추가된 칼럼 보기
#교재 p177 실습 - hflights_df에서 비행시간의 평균 구하기

#교재 p178 실습 - hflights_df의 관측치 길이 구하기
#교재 p178 실습 - 도착시간의 표준편차와 분산 계산하기
#교재 p178 실습 - 집단변수를 이용하여 그룹화하기

#교재 p180 실습 - 공통변수를 이용하여 내부 조인하기
#교재 p180 실습 - 공통변수를 이용하여 왼쪽 조인하기

#교재 p181 실습 - 공통변수를 이용하여 오른쪽 조인하기
#교재 p181 실습 - 공통변수를 이용하여 전체 조인하기

#교재 p182 실습 - 두 개의 데이터프레임을 행 단위로 합치기

#교재 p183 실습 - 두 개의 데이터프레임을 열 단위로 합치기
#교재 p183 실습 - 데이터프레임의 칼럼명 수정하기


