#날짜 : 2022/04/19
#이름 : 김철학
#내용 : Ch05.데이터 시각화 - 점차트 교재 p146

score <- c(80, 72, 60, 78, 82)
names(score) <- c('김유신', '김춘추', '장보고', '강감찬', '이순신')

class(score)

dotchart(score)
dotchart(names(score), score, color='red', lcolor='blue')


#교재 p146 실습 - 점 차트 사용하기