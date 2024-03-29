#날짜 : 2022/04/20
#이름 : 김철학
#내용 : Ch08.고급 시각화 분석 - 고급 시각화 실습 교재 p259

install.packages('ggplot2')
library(ggplot2)

########################
#막대차트
mtcars

mtcars_cyl <- table(mtcars$cyl)
mtcars_cyl

#R기본 막대차트
barplot(mtcars_cyl)

#ggplot2 막대차트
qplot(data=mtcars, x=cyl, geom = 'bar')
ggplot(data=mtcars, aes(x=cyl)) + geom_bar()

########################
#라인차트
economics
View(economics)

#R기본 라인차트
plot(economics$date, economics$unemploy, type = 'l')

#ggplot2 라인차트
qplot(data=economics, x=date, y=unemploy, geom='line')
ggplot(data = economics, aes(x=date, y=unemploy)) + geom_line()

########################
#박스상자
mpg
View(mpg)

#R기본 박스상자
boxplot(mpg$hwy ~ mpg$drv)

#ggplot2 박스상자
qplot(data=mpg, x=drv, y=hwy, geom = 'boxplot')
ggplot(data=mpg, aes(x=drv, y=hwy)) + geom_boxplot()

########################
#히스토그램
iris
View(iris)

#R기본 히스토그램
hist(iris$Sepal.Width)
hist(iris$Sepal.Length)
hist(iris$Petal.Width)
hist(iris$Petal.Length)

#ggplot2 히스토그램
qplot(data=iris, x=Sepal.Width, geom='histogram')
ggplot(data = iris, aes(x=Sepal.Width)) + geom_histogram()


########################
#산점도
#R기본 산점도
plot(iris[,3:4], pch=16, col=iris$Species)

#ggplot2 산점도
qplot(data=iris, x=Petal.Length, y=Petal.Width, color=Species, geom='point')
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width, color=Species)) + geom_point()

