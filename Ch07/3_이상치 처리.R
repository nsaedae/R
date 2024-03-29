#날짜 : 2022/04/20
#이름 : 김철학
#내용 : Ch07.EDA와 데이터 정제 - 이상치 처리 실습 교재 p202

library(dplyr)

#이상치 데이터 불러오기
df_exam <- read.csv('../file/exam_outlier.csv')
View(df_exam)

#이상치를 결측치로 대체
df_exam$math    <- ifelse(df_exam$math    > 100 | df_exam$math < 0, NA, df_exam$math)
df_exam$english <- ifelse(df_exam$english > 100 | df_exam$english < 0, NA, df_exam$english)
df_exam$science <- ifelse(df_exam$science > 100 | df_exam$science < 0, NA, df_exam$science)
View(df_exam)

#결측치를 0으로 대체
df_exam$math    <- ifelse(!is.na(df_exam$math),    df_exam$math,    0)
df_exam$english <- ifelse(!is.na(df_exam$english), df_exam$english, 0)
df_exam$science <- ifelse(!is.na(df_exam$science), df_exam$science, 0)
View(df_exam)

#탐색분석(EDA)
df_exam2 <- df_exam %>% mutate(total=math+english+science, mean=total/3) %>% arrange(desc(total))
View(df_exam2)


#교재 p203 실습 - 범주형 변수의 극단치 처리하기
#교재 p203 실습 - subset() 함수를 사용하여 데이터 정제하기

#교재 p204 실습 - 연속형 변수의 극단치 보기

#교재 p205 실습 - price 변수의 데이터 정제와 시각화
#교재 p205 실습 - age 변수의 데이터 정제와 시각화

#교재 p206 실습 - boxplot와 통계를 이용한 극단치 처리하기












