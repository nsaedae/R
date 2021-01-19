#날짜 : 2021/01/18
#이름 : 김철학
#내용 : Ch03.데이터 입출력 - 데이터 저장하기 교재 p101

#작업 디렉터리 지정
setwd('C:/Users/bigdata/Desktop/Workspace/R/file')

#데이터 파일로 저장하기
write.csv(titnic, 'github_titanic.csv', row.names = T)
