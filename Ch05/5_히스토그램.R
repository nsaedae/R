#날짜 : 2022/04/19
#이름 : 김철학
#내용 : Ch05.데이터 시각화 - 히스토그램 교재 p150

cars
View(cars)

dist <- cars[,2]
dist

barplot(dist)
hist(dist)

hist(iris$Sepal.Length)

#교재 p150 실습 - iris 데이터셋 가져오기
#교재 p150 실습 - iris 데이터셋의 꽃받침 길이(Sepal.Length)로 히스토그램 시각화하기

#교재 p151 실습 - iris 데이터셋의 꽃받침 너비(Sepal.Width)로 히스토그램 시각화하기

#교재 p152 실습 - 히스토그램에서 빈도와 밀도 표현하기
#교재 p152 실습 - 정규분포 추정 곡선 나타내기