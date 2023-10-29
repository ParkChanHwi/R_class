List <- list(1,2,3)
print(List)

typeof(List)

List <- list(1.6,2.3,3.5)
print(List)

mode(List)

List <- list("apple", "banana", "orange", 1, 1.5 , TRUE)

List
typeof(List)

x < -c("apple", 12, TRUE)

Vector <- c(1,2,3)

Vector

char_vector <- c("A", "B", 1.11)
mode(char_vector)

List_1 <- list(1.6,2.3, 3.5)
List_2 <- list(2.6, 5.3, 7.5)
List_1 + List_2

Vector_1 <- c(1.6,2.3,3.5)
Vector_2 <- c(2.6,5.3,7.5)
Vector_1 + Vector_2


matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3)

xmatrix <- matrix(c(2,3,4,5))
xmatrix 

ymatrix <- matrix(c(2,3,4,5), ncol = 2)
ymatrix

zmatrix <- matrix(c(2,3,4,5,6,7,8,9), nrow = 4, ncol = 2)
zmatrix

zmatrix2 <- matrix(c(2,3,4,5,6,7,8,9), nrow = 4, ncol = 2, byrow = TRUE)

zmatrix2

rc1<-c(2,4,5,6)
rc2<-c(7,8,9,10)
cmatrix <- cbind(rc1,rc2)  #4x2 행렬 
cmatrix

rmatrix <- rbind(rc1,rc2) #2x4행렬
rmatrix

amatrix <- matrix(c(1,2,3,4,5,6,7,8,9), nrow= 3)
amatrix

bmatrix <- matrix(c(2,3,-6,1,-4,2,-3,8,7) ,nrow = 3, byrow=TRUE)
bmatrix

amatrix + bmatrix

2*amatrix

amatrix * bmatrix

amatrix%*%bmatrix

sqrt(amatrix)

amatrix^2

m=matrix(c(1,2,3,4), nrow=2)
rownames(m) = c("Row1", "Row2")
colnames(m) = c("Col1", "Col2")

m

row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2")
dimnames(m) = list(row_names, col_names)
m


matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol=3)

array(data=c(1,2,3,4,5,6),dim = c(2,3))


array(data=c(1,2,3,4,5,6), dim = c(2,2,2))

mid <- c(23,25,12,25,29,27,26,12)
fina <- c(21,29,20,22,20,26,27,28)

array1 <- array(mid, dim=c(2,2,2))
array2 <- array(fina, dim=c(2,2,2))

array1 + array2

array1 * array2

sqrt(array1)

array1 %*% array2

a=array(data=c(1,2,3,4,5,6), dim = c(2,2))
b=array(data=c(1,2,3,4,5,6), dim = c(2,2))
a
cbind(a,b)

rbind(a,b)

my_array <- array(1:12, dim=c(2,3,2))
row_names <-c("Row1","Row2")
col_names <- c("Col1","Col2", "Col3")
slice_names <-c("Slice1","Slice2")
dimnames(my_array) <- list(row_names,col_names,slice_names)
my_array

xarra <- c(28,45,31,60,30,25,50,80)
arra <- array(xarra, dim = c(2,2,2), dimnames = list(c("r1","r2"),c("C1","c2"),c("arr1","arr2")))

arra

is.array(arra)

dim(arra)

mid <- c(23,25,12,25,29,27)
fina <- c(21,29,20,22,20,26)

arrmidfina <- array(data=c(mid,fina), dim=c(2,3,2))
rownames(arrmidfina)<-c("Park","Lee")
colnames(arrmidfina) <- c("Math","Eng", "Kor")
arrmidfina

a= array(data = c(1,2,3,4,5,6), dim = c(2,3))
a[2]
typeof(a[2])

a[1,2]
typeof(a[1,2])

a[1:2]

a[1:3]
a[1:2,2]
a[1:2,2:3]


my_list <- list("apple", 3.14,c(1,2,3),TRUE)
my_list[[3]][2]

my_list[3]
typeof(my_list[3])
my_list[[3]]
typeof(my_list[[3]])

my_vec <-c("apple",3.14,c(1,2,3),TRUE)
my_vec[[3]][2]
my_vec[3]
my_vec[[3]]

my_array <- array(c(5,3,1,5,7,8,10), dim = c(2,3))

my_array[1,2]
my_array[2,1]
my_array[1,]
my_array[,2]

my_array <- array(1:24, dim = c(3,4,2))

my_array[2,3,1] 
my_array[3,,2]
my_array[,2:3,]
my_array[2,3,1]
my_array[, , 2]

t_array = array(c(1:20), dim = c(2,5,2))
t_array
t_array[1,3,1]
t_array[1,3,2]

vec1 <- c("A", "B", "B", "B", "B", "A", "A", "A", "A", "A", "B", "B")
vec2 <- c(5000, 12000, 13000, 8000, 9000, 3000, 5000, 4000, 4500,6000, 8000, 8500)
vec3 <- c(2500, 5000, 6000, 5500, 7000, 4600, 3000, 2500, 3400, 4700, 6400, 4400)
vec4 <- c(1:32)
matrix1 <- matrix(data = vec4, nrow = 4, ncol = 8)
array1 <- array(c(1:32), dim = c(2,4,2,2))
matrix1[4,5]
matrix1[2,8]

array1[2,2,1,2]
array1[2,3,2,2]
array1

sum_array <- array1[,,1,] + array1[,,2,]
sum_array

a_array <- array(c(1:12), dim = c(4,3,1))
b_array <- array(c(13:24), dim = c(4,3,1))

abc_array <- cbind(a_array,b_array)
abr_array <- rbind(a_array,b_array)

abc_array
abr_array

row_names <-c("Row1","Row2","Row3","Row4","Row5","Row6", "Row7", "Row8", "Row9", "Row10","Row11","Row12")
col_names <- c("Col1","Col2")
dimnames(abc_array) <- list(row_names,col_names)

row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2", "Col3", "Col4", "Col5", "Col6", "Col7", "Col8", "Col9", "Col10", "Col11", "Col12")
dimnames(abr_array) <- list(row_names,col_names)

abr_array

data <- c("A","B", "A", "C", "B", "A", "A")
frequency_table <- table(data)
print(frequency_table)
frequency_table[1]

city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18,21,21,17,8,11,25)

df <- data.frame(city = city, pm25 = pm25)

df

id<-c(1:5)
gender <- c("M","F", "F", "M", "M")
major <- c("Eng", "Math", "Com", "Eng", "Busi")
salary<-c(2500,2800,2500,3000,2600)
survey<- data.frame(ID=id, Gender = gender, Major = major, Salary = salary, stringsAsFactors = FALSE)

survey

head(survey, n =3)

tail(survey, n=3)

survey$Salary

survey[["Salary"]]

survey["Major"]

survey[2]

survey[[2]]

survey$score = c(200,300,400,500,600)

survey

survey$ss = survey$Salary+survey$score
survey

summary(survey)



survey$ss = as.integer(survey$ss)

typeof(survey$ss)

survey[c(1,2)]

survey[c(-1,-2)]

survey[survey$Gender == "F",]# 조건

survey[survey$Major == "Eng" & survey$Salary>2600,]

subset(survey, Major=="Com", c(Gender,Salary))

survey$Gender<- NULL
survey


survey[2] <- NULL

id <- c(1:5)
gender <- c("M", "F", "F", "M", "M")
major <- c("Eng", "Math", "Com", "Eng", "Busi")
salary <- c(2500, 2800, 2500, 3000, 2600)
survey <- data.frame(ID = id,Gender = gender, Major = major, Salary = salary, stringsAsFactors = FALSE)

survey

nrow(survey)
ncol(survey)
dim(survey)
names(survey)
colnames(survey)
rownames(survey)
sort(survey$Salary)
order(survey$Salary)

survey[c(order(survey$Salary)),]


name_age_df <- data.frame(
  Name = c("Kim-cheol-soo", "Lee Cheol-soo", "Kim Young-hee", "Lee Young-hee",
           "Kim min-jun", "Park Min-jun", "Kim Ji-young", "Park Ji-young"), 
  Age = c(20,24,21,24,35,40,34,35),
  stringsAsFactors = FALSE
)

print(name_age_df)


age_gt_24 <- subset(name_age_df, name_age_df$Age > 24)

print(age_gt_24)
getwd()
setwd("C:/Users/cksgn/OneDrive/바탕 화면/Rpro")


data <- read.csv("C:/Users/cksgn/OneDrive/바탕 화면/Rpro/survey.csv",
                 header = TRUE, stringsAsFactors = FALSE, fileEncoding = "UTF-8")

data

vec <- c(0,1,2,3,4,5,6,7,8,9,10)
vec2 <- c(10,11,12,13,14,15,16,17,18,19,20)
vec3 <- cbind(vec, vec2)
amatrix <- matrix(vec3, nrow = 11, ncol = 2)
amatrix

vec3 <- c(20,21,22,23,24,25,26,27,28,29,30)
array1 <- array(vec, dim = c(5,2))
array2 <- array(vec2, dim = c(5,2))
array3 <- array(vec3, dim = c(5,2))

name = c("Kim", "Park", "Lee")
Kor = c(100,80,80)
Eng = c(60,40,80)
Math = c(50,100,80)
Phys = c(40,30,20)
Chem = c(40,30,20)
Biol = c(40,20,10)
Eart = c(40,30,50)
score = data.frame(이름 = name, 국어 = Kor,영어 = Eng, 수학 = Math, 물리 = Phys, 화학 = Chem, 생물 = Biol, 지구 = Eart, stringsAsFactors =  FALSE)

score
score$mean = (score$국어 + score$영어 + score$수학)/3

subset(score, score$mean >= 80 , c(이름))


hospital <- c("A", "B", "B", "B", "B", "A", "A", "A", "A", "A", "B", "B")
price <- c(5000, 12000, 13000, 8000, 9000, 3000, 5000, 4000, 4500, 6000, 8000, 8500)
pres <- c(2500, 5000, 6000, 5500, 7000, 4600,3000, 2500, 3400, 4700, 6400, 4400)

hos <- data.frame(병원 = hospital, 진료금액 = price, 처방전금액 = pres)

spp <- hos$진료금액 + hos$처방전금액

hos$spp <- spp
getwd()

####경로####
write.csv(hos, "C:/Users/cksgn/OneDrive/바탕 화면/Rpro/hos.csv", row.names = FALSE)

read.csv("C:/Users/cksgn/OneDrive/바탕 화면/Rpro/hos.csv", stringsAsFactors = FALSE)

car <- data.frame(mpg = mtcars$mpg, cyl = mtcars$cyl, disp = mtcars$disp
                  , wt = mtcars$wt, qsec = mtcars$qsec)
qw <- car$wt + car$qsec

typeof(qw)

total_car
mtcars
car_name <- rownames(mtcars)

car_name



car_model = paste(car_name, sep= "-", total_car)

car$total_car <- total_car
car$car_model <- car_model

install.packages("tidyr")
library(tidyr)

car <- separate(car, col = "car_model", into = c("car", "model"), sep = "-")

car_model

subset(car, mtcars$mpg > 20 & mtcars$disp >= 160, select = c(mpg,disp,car,model))


