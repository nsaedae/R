#날짜 : 2022/04/19
#이름 : 김철학
#내용 : Ch05.데이터 시각화 - 박스상자 교재 p148

cars
View(cars)

dist <- cars[,2]
dist

boxplot(dist, main='제동거리')
boxplot.stats(dist)

iris
View(iris)
boxplot(data=iris, Sepal.Length ~ Species)

#교재 p148 실습 - VADeaths 데이터셋을 상자그래프로 시각화하기
#교재 p149 실습 - VADeaths 데이터셋의 요약통계 보기
