#날짜 : 2022/04/19
#이름 : 김철학
#내용 : Ch05.데이터 시각화 - 막대차트 교재 p139


#기본 막대차트
count <- c(1, 2, 3, 4, 5)
barplot(count)

score <- c(80, 72, 60, 78, 82)
names(score) <- c('김유신', '김춘추', '장보고', '강감찬', '이순신')
barplot(score)


#범주형 막대차트
season <- c('winter', 'summer', 'spring', 'summer', 'summer',
            'autumn', 'autumn', 'summer', 'spring', 'spring')

season
result <- table(season)
result

barplot(result)
barplot(result, main='season')
barplot(result, main='season', col = c('blue', 'red', 'green', 'yellow'))
barplot(result, main='season', col = rainbow(4))
barplot(result, main='season', col = heat.colors(4))
barplot(result, main='season', col = terrain.colors(4))
barplot(result, 
        main='season', 
        col = rainbow(4),
        xlab = '계절',
        ylab = '빈도수',
        horiz = T)


#누적 막대차트
df_sample <- read.csv('../file/sample_population.csv')
df_sample
View(df_sample)

# 행렬변환
mat_sample <- as.matrix(df_sample)
mat_sample

barplot(mat_sample)

#교재 p140 실습 - 세로 막대 차트 그리기

#교재 p141 실습 - barplot() 함수 도움말 보기
#교재 p141 실습 - 막대차트의 가로축과 세로축에 레이블 추가하기

#교재 p142 실습 - 가로 막대차트 그리기
#교재 p142 실습 - 막대차트에서 막대 사이의 간격 조정하기

#교재 p143 실습 - 막대차트에서 막대의 색상 지정하기
#교재 p143 실습 - 막대 차트에서 색상이름을 사용하여 막대의 색상 지정하기

#교재 p144 실습 - 누적 막대 차트 그리기
#교재 p144 실습 - VADeaths 데이터셋 구조 보기

