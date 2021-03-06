#날짜 : 2021/01/28
#이름 : 김철학
#내용 : Ch17.시계열분석 - ARIMA모형 분석실습 교재 p598

#####################################
#항공기 탑승 승객수 예측분석
install.packages('tseries')
install.packages('forecast')
library(tseries)
library(forecast)

#1단계-시계열 자료 특성분석(정상성/비정상성)
AirPassengers
class(AirPassengers)

plot(AirPassengers)
plot(stl(AirPassengers, s.window = 'periodic'))

#2단계-정상성 데이터로 변환
diffLogAirPassangers <- diff(log(AirPassengers))
plot(diffLogAirPassangers)

#3단계-ARIMA모형 생성을 위해 최적화된 파라미터 확인
auto.arima(diffLogAirPassangers)

#4단계-ARIMA모형 생성
model <- arima(log(AirPassengers), 
               c(1,0,1), 
               seasonal = list(order=c(0,1,1)))


#5단계-미래 추이 예측
result_pred <- predict(model, n.ahead = 120)
ts.plot(AirPassengers, exp(result_pred$pred), lty=c(1,2))






