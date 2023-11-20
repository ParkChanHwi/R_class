install.packages("ggplot2")
library("ggplot2")


data <- read.csv("C:/Users/User/Desktop/HN_16~18.csv", header = TRUE, stringsAsFactors = FALSE)

data
# 변수 설명  cfam : 가구원수 1~5명, 6 : 6명이상, 9 : 모름     genertn : 세대 수 1. 1인가구 2,3 : 1세대, 4,5,6: 2세대, 7 : 3세대 이상 9: 모름
# BP1 : 스트레스 인지 정도 1 ~ 3 느낀다, 4. 거의 느끼지 않는다, 8. 해당x (유아) 9. 모름
# BP2 : 스트레스 원인
# mh_stress : stress 인지율 0: 적게 느낌, 1: 많이 느낌
survey1 = data.frame(year <- data$year, cfam <- data$cfam, genertn <- data$genertn, a_stress <- data$BP1,  mh_stress <- data$mh_stress, stringsAsFactors = FALSE)

perfect <- survey1[complete.cases(survey1),] # 결측값 제거 과정을 진행했더니 2016년과 2017년에는 BP2변수 즉 스트레스 요인에 대한 데이터가 없어 많은 결측값이 발생하는 것으로 파악하여 
# 전체적인 비교를 위한 해당 변수에는 스트레스 요인에 대한 변수를 삭제하였음
perfect

Stress_2016 <- data.frame (perfect[perfect$year....data.year == "2016" & perfect$mh_stress....data.mh_stress == "1",])


#survey1[survey1$year....data.year == "2016",]
#survey1[survey1$year....data.year == "2016" & survey1$mh_stress....data.mh_stress == "1",]



#survey1$mh_stress2 = survey1$mh_stress....data.mh_stress

#ggplot(survey1, aes(x=genertn, y=mh_stress, fill = genertn)) + 
#  geom_bar(stat = "identity") + 
#  labs(title = "가구수 당 스트레스 인지정도") + xlab("가구") + ylab("스트레스 인지")   #데이터에 맞지않음 y축값을 변경하고 다시 할 필요가 있다.

#ggplot(survey1,)

ggplot(Stress_2016, aes(x= Stress_2016$cfam, y= Stress_2016$mh_stress, fill = Stress_2016$cfam )) +
  geom_bar(stat = "identity") + 
  labs(title = "세대 수 당 스트레스 인지정도") + xlab("세대수") + ylab("스트레스를 많이 느낀다고 답한 인원 수") 
# 전체 인원수가 가장 많은 1세대 2세대
#가구에서 응답이 많이 기록됨으로써 나오는 그래프 이므로 의미가 없다. -> 비율로 하는것이 나을것






