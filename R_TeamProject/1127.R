#install.packages("ggplot2")
library("ggplot2")
install.packages("dplyr")
library("dplyr")


#total_sleep_wk(주중), total_sleep_wd(주말), age  
data <- read.csv("C:/Users/cksgn/OneDrive/바탕 화면/HN_16~18.csv", header = TRUE, stringsAsFactors = FALSE)
#BP6_10, BP6_31
data
# 변수 설명  cfam : 가구원수 1~5명, 6 : 6명이상, 9 : 모름
# BP1 : 스트레스 인지 정도 1 ~ 3 느낀다, 4. 거의 느끼지 않는다, 8. 해당x (유아) 9. 모름
# BP2 : 스트레스 원인
# mh_stress : stress 인지율 0: 적게 느낌, 1: 많이 느낌
perfect = data.frame(year = select(data,year), cfam = select(data,cfam), age =select(data,age) , sex =select(data,sex) , a_stress = select(data,BP1),  mh_stress = select(data,mh_stress), sc1 = select(data,BP6_10), stringsAsFactors = FALSE)

perfect <- perfect[complete.cases(perfect),] # 결측값 제거 과정을 진행했더니 2016년과 2017년에는 BP2변수 즉 스트레스 요인에 대한 데이터가 없어 많은 결측값이 발생하는 것으로 파악하여 
# 전체적인 비교를 위한 해당 변수에는 스트레스 요인에 대한 변수를 삭제하였음

# cfam = 1 1인가구 이외는 다인가구 
# 미성년자 제외 만 19세 이상
perfect <- perfect[perfect$age >= 19,]

#총 인원(조사에 임한인원 수 가족 구성원 수를 모른다고 말한 인원 제외 19852명)
total = length(which(perfect$cfam != 9)) #18305
# 1인가구 수 (2282)
fam_one = length(which(perfect$cfam == 1))
# 다인가구 수 (16023)
fam_many = length(which(perfect$cfam > 1 & perfect$cfam != 9))


#1인가구 데이터 프레임과 다인가구 데이터 프레임을 따로 뽑고 각 데이터프레임에서 스트레스 인지 정도를 비율로 나타내는 파이차트로 표현
OPH <- perfect[perfect$cfam == 1,]
sc1_1 = length(which(OPH$BP6_10== 1))
bp1_1 = length(which(OPH$BP1 == 1))
89/119
89/2282

MPH <- perfect[perfect$cfam > 1 & perfect$cfam != 9,]
sc1_2 = length(which(MPH$BP6_10 == 1))
bp1_2 = length(which(MPH$BP1 == 1))
219/747
219/16023





huge_stress = length(which(perfect$cfam == 1 & perfect$BP1 == 1))
big_stress = length(which(perfect$cfam == 1 & perfect$BP1 ==2))
mideum_stress = length(which(perfect$cfam == 1 & perfect$BP1 == 3))
small_stress = length(which(perfect$cfam == 1 & perfect$BP1 == 4))
119/2282 #매우많다 5%
472/ 2282 # 많다  21%
1115/2282 # 있다  49%
576/2282  # 없다  25%


#다인가구 기준 많다 3521, 적다 9017, 없다 2540 대단히 많음 741
mhuge_stress = length(which(perfect$cfam != 1 & perfect$cfam != 9 & perfect$BP1 == 1)) 
mbig_stress = length(which(perfect$cfam != 1 & perfect$cfam != 9 & perfect$BP1 ==2))
mmideum_stress = length(which(perfect$cfam != 1 & perfect$cfam != 9 & perfect$BP1 == 3))
msmall_stress = length(which(perfect$cfam != 1 & perfect$cfam != 9 & perfect$BP1 == 4))
mhuge_stress
mbig_stress
mmideum_stress
msmall_stress

#1인가구의 스트레스에 대한 주관적인 판단에 대한 그래프 -> 추후 퍼센트를 활용해 ppt에 정리예정
stress_per_household <- data.frame(ans = c("huge", "big", "mideum", "none"), num <- c(117,464,1099,564))


ggplot(stress_per_household, aes(x="",y= stress_per_household$num....c.117..464..1099..564., fill = stress_per_household$ans)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) 


stress_per_household2 <- data.frame(ans = c("huge", "big", "mideum", "none"), num <- c(741,3521,9017,2540))


ggplot(stress_per_household2, aes(x="", y= stress_per_household2$num....c.741..3521..9017..2540. , fill = stress_per_household2$ans)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)





