####1강####
a = NA
int_var <- 5
numeric_var <- 3.14
complex_var <- 2+ 3i
character_var <- "Hello, world!"
logical_var <- TRUE
another_logical_var <- FALSE
NULL_var <- NULL
NA_var <- NA
neg_inf <- -Inf
pos_inf <- Inf
nan <- 0/0
mode(int_var)
mode(numeric_var)
mode(complex_var)
mode(character_var)
mode(logical_var)
mode(another_logical_var)
mode(NULL_var)
mode(NA_var)
mode(neg_inf)
mode(pos_inf)
mode(nan)
sin(45)
cos(45)
tans(45)
tan(45)
cos(90)
exp(0)
exp(1)
exp(e)
exp(-1)
facto
factorial(5)
a=c(1,2,3,4,5,6)
sum(c(1,2,3,4,5,6,7,8,9,10))
####seq####
seq(from=1, to=5, by =2) # 1부터 5까지 2씩 증가
seq(from=1, to=100, by=5)
seq(1,5, by=2)
seq(0,1,length.out=1000)
####rep####
rep(c(1,2,3), times= 2) # 원소 전체 2번 반복
rep(c(1,2,3), each=2) # 원소 각각 2번씩 반복
rep(c(1,2,3,4,5), times= 100)
rep(c(1,2,3,4,5), each= 100)
a <- 3
print(a)
print(3)
print("Hello")
####paste, paste0####
paste(3,4,5,6,7)
print(paste(3,4,5,6,7))
paste0(3+4,4,5,6,7)
print(paste0(3+4,4,5,6,7))
paste(3,4,5,6,7, sep = "-")
paste0(3+4,4,5,6,7, sep = "-")
x <- 1:100
head(x)
head(x, n=7)
tail(x)
tail(x, n=7)
sample(x, size, replace = FALSE, prob = NULL)

####2강####
a=c(1,2,3,4,5,6)
sum(c(1,2,3,4,5,6,7,8,9,10))

seq(from=1, to = 5, by=2) # 1부터 5까지 2개씩 증가
seq(1,5, by=2)

seq(0,1, length.out=1000) #0부터 1까지 1000

rep(c(1,2,3), times=2)
rep(c(1,2,3), each=2)

a = 3
b = 4
a
b # 동시에 드래그 해서 실행하는 경우 아랫값만 실행될 수 있다.

print(a)
print(b) #확실하게 프린트함수로 출력
# 한번에 여러개 출력 python은 format R은 paste가 있다.

a= 98


print(a)
print(3)
print("Hello")

paste(3,4,5,6,7)
print(paste(3,4,5,6,7))
 
paste0(3+4,4,5,6,7)
print(paste0(3+4,4,5,6,7))

paste(3,4,5,6,7, sep = "-")
paste0(3+4,4,5,6,7,sep = "-")

print(paste0(name = "박찬휘","님의 점수는: ", a,  "점 입니다."))

x<- 1:100
head(x) # x에 들어간 값 1~6까지 출력

head(x, n=7) # 이러면 1~7까지

# sample(x, size, replace, prob) replace =TRUE -> 복원추출
# replace = FALSE -> 비복원추출 prob -> 조건에 대한 확률 조정
sample(10)

sample(45, 6)

sample(10,3,prob=(1:10)/55)

sample(10,3,prob = c(0.1,0.2,0.3,0.05,0.05,0.05,0.05,0.05,0.05,0.05))
#각 요소들이 뽑힐 확률 조정


runif(1000, 0, 100) # 난수 생성 (생성할 개수, 최소, 최대) 최소와 최대 사이의 난수 생성

rnorm(10, 50, 20) #(n,평균, 표준편차)

rbinom(5, 10, 0.3)

a= 10
b = 20
c = 30
rm(a)

getwd()

setwd("C:\\Users\\User\\Desktop\\test\\")


seq(from=1, to=100, by=5)
rep(c(1,2,3,4,5), times= 100)
rep(c(1,2,3,4,5), each= 100)
sample(10,5)
sample(49, 6)
sample(10,3,replace = TRUE)
sample(10,3,prob=(1:10)/55)
sample(10,3,prob = c(0.1,0.2,0.3,0.05,0.05,0.05,0.05,0.05,0.05,0.05))
runif(100, 50, 100) # 난수 생성 (생성할 개수, 최소, 최대)
rnorm(200, 100, 15) #(n,평균, 표준편차)
int count = 0;
rbinom(10, 500, 0.1) # rbinom(시뮬레이션 횟수, 사람 수, 확률)
}

List <- list(1,2,3)
List <- list(1.6,2.3,3.5)
List
typeof(List)
mode(List)

List <- list("apple", "banana", "orange", 1, 1.5, TRUE)
List

Vector <- c(1,2,3)
Vector

char_vector <- c("apple", "banana", "orange")
char_vector

logical_vector <- c(TRUE, FALSE, TRUE)
logical_vector

mixed_vector <- c(TRUE, "orange", 1, 1.9)
mixed_vector # 전부 문자열로 변환된다.

mode(Vector)

List <- list(1,TRUE,3,"orange")

List

Vector <- c("aa",2,3)
Vector
mode(Vector)

mt_list <- list("apple", 3.14, c(1,2,3), TRUE)
mt_list