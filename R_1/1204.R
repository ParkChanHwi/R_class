
install.packages('data.table')
library(data.table)
hn_2009 <- fread('C:/Users/User/Desktop/a.csv')
hn_2010 <- fread('C:/Users/User/Desktop/b.csv')
hn_2011 <- fread('C:/Users/User/Desktop/c.csv')


#행 수가 맞지 않아도 합치기 위함
combined_df <- rbindlist(list(hn_2009, hn_2010, hn_2011), fill = TRUE)


dim(combined_df)


#hn_2009의 변수들만 불러오기
col = colnames(hn_2009)
col_2009 <- combined_df[, col, with = FALSE] # 왼쪽에 쓴 이유 열 가죠오기

df <- fread('C:/Users/User/Desktop/a.csv')



df_clean <- na.omit(df) # 모든 결측치 제거

df_numeric <- df[, sapply(df,is.numeric), with = FALSE]
df_character <- df[, sapply(df,is.character), with = FALSE]

dim(df_numeric)
dim(df_character)

#수치형의 결측치를 맞는 값으로 바꿔주는 작업

install.packages('mice')
library(mice)

imputed_data <- mice(df_numeric, m = 5, maxit = 10,method = "pmm", seed = 1235)
# m = 몇개의 후보를 추출할 것인지,결측치 처리 후보, maxit = 학습횟수 5개를 만들고
#10개를 학습하겠다. method = pmm *시험문제*  
# seed 를 쓰면 데이터가 같은때 그 결과가 고정된다. 

completed_data <- complete(inputed_data, 1)

fwrite(completed_data, 'C:/Users/User/Desktop/건강조사.csv')

#35분가량
install.packages("dplyr")
library('dplyr')
hnnew <- fread('C:/Users/User/Desktop/earlyadopter.csv')
mutate(hnnew, across(c("30s","40s","50s","60s"),~ifelse(.>6.0,"High",.))) # . 은 모든 데이터

mutate(hnnew, across(c("30s", "40s", "50s", "60s"), ~case_when(. >= 6.0~1, . >=2.5 & .<6.0 ~ 2, . <2.5~3, TRUE ~ .)))

mutate(hnnew, across(c("20s","30s", "40s", "50s", "60s"), ~case_when(. >= 6.0 ~ "High", . >=2.5 & .<6.0 ~ "Medium", . <2.5 ~ "Low", TRUE ~ as.character((.)))))






