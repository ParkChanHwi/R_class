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

