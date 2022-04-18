#날짜 : 2022/04/18
#이름 : 김철학
#내용 : Ch03.데이터 입출력 - 데이터 저장하기 교재 p101

#R 제공 내장 데이터셋
data()

iris
write.csv(iris, '../file/iris_dataset.csv', quote = F)

Titanic
class(Titanic)
help(Titanic)
View(Titanic)
write.csv(Titanic, '../file/Titanic_dataset.csv', quote = F)
