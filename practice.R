install.packages("tidyr")
library("tidyr")

vec <- c(0,1,2,3,4,5,6,7,8,9,10)
vec2 <- c(10,11,12,13,14,15,16,17,18,19,20)

 vecm <- cbind(vec,vec2)
matr <- matrix(data = vec3, nrow = 11, ncol = 2)

matr[4,2] = 100
matr

vec3 <- c(20,21,22,23,24,25,26,27,28,29,30)



my_array1 <- array(vec, dim = c(5,2))

my_array2 <- array(vec2, dim = c(5,2))

my_array3 <- array(vec3, dim = c(5,2))

Char <- c("Kim", "Park", "Lee")
Kor <- c(100, 80, 80)
Eng <- c(60,40,80)
Math <- c(50,100,80)
Physic <- c(40,30,20)
Chemistry <-c(40,30,20)
Bio <- c(40,20,10)
Earth <- c(40,30,50)

score <- data.frame(이름 = Char, 국어 = Kor, 영어 = Eng, 수학 = Math, 물리 = Physic, 화학 = Chemistry, 생물 = Bio, 지구 = Earth, stringsAsFactors = FALSE)

score$mean = (score$국어 +score$영어+score$수학)/3
score[score$mean >= 80 ,]


hospital <- c("A","B","B","B","B","A","A","A","A","A","B","B")
price <-c(5000,12000,13000, 8000,9000, 3000, 5000, 4000, 4500, 6000, 8000, 8500)
preprice <- c(2500, 5000, 6000, 5500, 7000, 4600, 3000, 2500, 3400, 4700, 6400, 4400)
hos <- data.frame(병원 = hospital, 진료금액 = price, 처방전금액 = preprice)
hos

hos$총액 = hos$진료금액 + hos$처방전금액

write.csv(hos, "C:/Users/User/Desktop/medical_expanse.csv", row.names = FALSE)

read.csv("C:/Users/User/Desktop/medical_expanse.csv", header = TRUE, 
         stringsAsFactors = FALSE)

car <- data.frame(mpg = mtcars$mpg, cyl = mtcars$cyl, disp = mtcars$disp,wt = mtcars$wt,qsec =  mtcars$qsec)

car$qw = car$wt + car$qsec

typeof(car$mpg)
typeof(car$cyl)
typeof(car$disp)
typeof(car$wt)
typeof(car$qsec)
typeof(car$qw)

summary(car)


car$total_car = mtcars$mpg+mtcars$cyl+mtcars$disp+ mtcars$hp + mtcars$drat+
                      mtcars$wt + mtcars$qsec + mtcars$qsec + mtcars$vs + mtcars$am
                    + mtcars$gear + mtcars$carb

car
car_name = (rownames(mtcars) + "-" + car$total_car) 
car_name= rownames(mtcars)
car_name
paste
#17번
car$car_model = paste(car_name , car$total_car , sep = "-")

car$car_model
# car$car_name = NULL 열 삭제

car$car = NULL
car$model = NULL


#18번
car <- separate(car, col = "car_model", into = c("car", "model"), sep = "-" )
car <- separate(car$car_model, into = c("car", "model"), sep = "-" )
#17번 출제 



#string as factor = ture 스트링값을 하나의 요소 아닐경우 각각을 캐릭터 값으로
#header = TRUE - 변수명 출력, FALSE 출력 x (read.csv에서 사용) write에서는 row.names에서 사용



subset(car, car$mpg>20 & car$disp >= 160, select = c(car$mpg,car$disp,car$car,car$model))