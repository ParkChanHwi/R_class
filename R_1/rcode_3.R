####3강####
mt_list <- list("apple", 3.14, c(1,2,3), TRUE)
mt_list  #list는 연산이 불가능, 여러 데이터 형을 넣을 수 있다.

vector <- c("aa", 2,3)

vector

mode(vector)

List_1 <-list(1.6,2.3,3.5)
List_2 <-list(2.6,5.3,7.5)

# 행렬 2차원 nrow 행의 개수, ncol 열의 개수 nxn 행렬 민들 수 있다.

matrix(data = c(1,2,3,4,5,6),nrow =2,ncol=3)
matrix(data = c(1,2,3,4,5,6,7,8),nrow =2,ncol=4)
m = matrix(data = c(1,2,3,4,5,6),nrow =2,ncol=3, byrow=TRUE) #순서대로 행렬을 만들고 싶은 경우
m = matrix(data = c(1,2,3,4),nrow =2,ncol=2)
# 행렬 행, 열 이름 붙이기 첫번째 방법
rownames(m) = c("Row1", "Row2")
colnames(m) = c("Col1", "Col2")
m 
#두번째 방법 이거 사용 권장
row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2")
dimnames(m) = list(row_names, col_names)
m
#각 행렬은 연산이 가능 

matrix(data =c(1,2,3,4,5,6),nrow=2,ncol=3) #행렬은 2차원만 만들 수 있다.
array(data = c(1,2,3,4,5,6),dim=c(2,3)) #배열은 1~n차원 만들 수 있다.
array(data = c(1,2,3,4,5,6),dim=c(2,3,2))
array(data = c(1,2,3,4,5,6),dim=c(2,4))

#cbind, rbind
a= array(data=c(1,2,3,4,5,6), dim = c(2,2))
b= array(data=c(1,2,3,4,5,6), dim = c(2,2))
cbind(a,b) # 변수와 데이터
rbind(a,b) 

my_array <- array(1:12, dim = c(2,3,2))

row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2", "Col3")
slice_names <- c("Slice1", "Slice2")

dimnames(my_array) <- list(row_names, col_names,slice_names)

#이름을 붙이고 싶지 않은 경우
dimnames(my_array) <- list(NULL, col_names,slice_names)

my_array

#인덱싱 매우 중요

a = "abcdef"
substr(a,1,3) #다른 프로그램 언어와 달리 시작 부분이 1부터 시작
# 폴더에서 특정 파일을 가져올떄 사용 ex) .csv
#a[n] a의 n번째 요소 a[-n] a에서 n번째 요소를 뺀 나머지 a[1:3] 1부터3까지

a<-list(1,2,3,4,5,6)
a[2]
a[-2]
a[1:3]
typeof(a[1]) #데이터 타입이 리스트 계싼불가
typeof(a[[1]]) #이렇게 해결
a[1] #리스트에 접근
a[[1]] #리스트 값에 접근해서 원 자료를 가져옴

a= array(data = c(1,2,3,4,5,6),dim = c(2,3))
a[2]
a[1,2]
a

a= array(data = c(1,2,3,4,5,6),dim = c(2,3,2))
a
a[1,3,1]
a[2,3,1]
a[2,3,2]

my_list <- list("apple", 3.14, c(1,2,3), TRUE)
my_list[[3]][2]
my_list[[3]]
typeof(my_list[[3]][2])
my_list[3]

my_vec <- c("apple", 3.14,c(1,2,3), TRUE)

my_vec[[3]][2]
my_vec[[4]]
my_vec[[6]]
my_array <- array(c(5,3,1,5,7,8), dim =  c(2,3))
my_array
my_array[1,2]
my_array[2,1]
my_array <- array(c(1:20), dim = c(2,5,2))
my_array
my_array[1,3,1]
my_array[2,3,2]
city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18, 21, 21, 17, 8, 11, 25)
df <- data.frame(city = city, pm25 = pm25)

df$city
df$city[1]
df$city[1:3]

my_vec1 <- c("A", "B", "B", "B", "B", "A", "A", "A","A","A", "B","B")
my_vec1
my_vec2 <- c(5000, 12000,13000, 8000, 9000, 3000, 5000, 4000, 4500,6000,8000,8500)
my_vec3  <- c(2500,5000,6000,5500,7000,4600,3000,2500,3400,4700,6400,4400)


m = matrix(data = c(1:32), nrow = 4, ncol = 8)
m

my_array <- array(c(1:32), dim = c(2,4,2,2))

my_array
my_array[2,2,1,2]
my_array[2,3,2,2]

#5번 미해결

array1 = array(c(1:12),dim = c(4,3))

array2 = array(c(13:24),dim = c(4,3))

cbind(array1,array2)
rbind(array1,array2)

row_names <- c("Row1", "Row2","Row3","Row4")
col_names <- c("Col1", "Col2", "Col3")


dimnames(array1) <- list(row_names, col_names)

dimnames(array2) <- list(row_names, col_names)

array1
array2

Char <- c("A", "B", "B", "B", "B", "A", "A", "A","A","A", "B","B")
vec2 <- c(5000, 12000,13000, 8000, 9000, 3000, 5000, 4000, 4500,6000,8000,8500)
vec3  <- c(2500,5000,6000,5500,7000,4600,3000,2500,3400,4700,6400,4400)
df <- data.frame(Char = Char, vec2 = vec2, vec3= vec3)
df

id <- c(1:5)
gender<-c("M","F","F","M","M")
major<-c("Eng","Math","Com","Eng","Busi")
salary<-c(2500,2800,2500,3000,2600)
survey <- data.frame(ID = id, Gender = gender, Major = major,Salary=salary, stringsAsFactors = FALSE)
survey

head(survey, n=3) 
tail(survey, n=3)
survey$Salary
survey[["Salary"]]

survey[["Major"]]

survey["Major"]

survey[2]
survey[[2]]

survey$score=c(200,300,400,500,600)
survey$ss=survey$Salary+survey$score

summary(survey)

typeof(survey$ID) 
survey$ID= as.factor(survey$ID)
survey
typeof(survey$ID)
survey$ID= as.character(survey$ID)

summary(survey)
#즁요한 이유 데이터를 받으면 엑셀로 받는데 엑셀은 숫자값을 불러와도 
#텍스트 형식이다. 이는 데이터 분석 전 데이터를 원래 형식으로 바꿔줘야함

names(survey) #vector type 가로 출력

names(survey)[names(survey) == "ss"] = "temp"

names(survey) 

# dataframe indexing
survey[c(1,2)] #id and gender

survey[c(-1,-2)] #except id and gender

survey[survey$Gender == "F",] # [ row,col ]  condition

survey[survey$Major == "Eng" & survey$Salary > 2600,]

survey[survey$Major == "Eng" | survey$Salary > 2600,]

survey[,survey$Gender == "M"]


survey[,c(1,2)] 


survey[c(1,2),]

# dataframe can combined using rbind, cbind
survey1=data.frame(ID = id[1:3], Gender = gender[1:3], Major = major[1:3],Salary=salary[1:3], stringsAsFactors = FALSE)

survey2 = data.frame(ID = id[4:5], Gender = gender[4:5], Major = major[4:5],Salary=salary[4:5], stringsAsFactors = FALSE)

survey3 = rbind(survey1,survey2)

survey1
survey2
survey3


#subset function  

survey <- subset(survey, survey$Gender == "M")
survey

survey_ID <- subset(survey, survey$Major == "Eng",select = c("ID", "Gender"))
survey_ID

install.packages("tidyr")
# phone-num 010-0000-0000, 
library("tidyr")
name_age_df <- data.frame(
  Name= c("Kim Cheol-soo", "Lee Cheol-soo", "Kim young-hee", "Lee Young-hee", "Kim min-jun", "Park Min-jun", "Kim Ji-young", "Park Ji-young"),
  Age = c(20,24,21,24,35,40,34,35),
  stringsAsFactors = FALSE
)



name_age_df<- separate(name_age_df, col = "Name", into = c("LastName", "FirstName"), sep = "-")

print(name_age_df)




data <- read.csv("C:/Users/User/Desktop/test.csv", header = TRUE, 
         stringsAsFactors = FALSE)
data

write.csv(survey, "C:/Users/User/Desktop/survey.csv", row.names = FALSE)
