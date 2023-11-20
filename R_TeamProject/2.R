install.packages("ggplot2")
library("ggplot2")

data <- read.csv("C:/Users/User/Desktop/HN_16~18.csv", header = TRUE, stringsAsFactors = FALSE)

survey1 = data.frame(year <- data$year, cfam <- data$cfam, genertn <- data$genertn, a_stress <- data$BP1,  mh_stress <- data$mh_stress, stringsAsFactors = FALSE)

perfect <- survey1[complete.cases(survey1),]

length(which(perfect$cfam....data.cfam == 1))
length(which(perfect$cfam....data.cfam > 1))

length(which(perfect$a_stress....data.BP1 == 1 & perfect$cfam....data.cfam == 1))

length(which(perfect$a_stress....data.BP1 == 1 & perfect$cfam....data.cfam != 1))

120 / 2284

791 / 17568


