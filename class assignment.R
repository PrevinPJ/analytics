#create a 100 row DF with following variables 
#gender, spl, age, experience, grade, placement
gender = factor(sample(c('M','F'), size=100, replace=T, prob=c(.7,.3)))
spl = factor(sample(c('Marketing','Finance','HR'), size=100, replace=T, prob=c(.5,.3,.2)))             
placement =factor(sample(c('Yes','No'), size=100, replace=T, prob=c(.6,.4)))           
grades = factor(sample(c(LETTERS[1:4]), size=100, replace=T, prob=c(.4,.2,.3,.1 )))                 
age =sample(c(ceiling(rnorm(100, mean=25, sd=2))))
age
experience =sample(ceiling(rnorm(100, mean = 2 , sd = 1)))
students = data.frame(gender,spl,placement,grades,age,experience)
summary(students)
students
write.csv(x= students,file = './data/chumma.csv')

library(dplyr)
students %>% group_by(placement,spl) %>% summarise(mean(experience), max(experience),mean(age),n())
students %>% filter(spl=='Marketing') %>% group_by(placement,spl) %>% summarise(mean(experience), max(experience),mean(age),n())


boxplot(students$age)
t1 = table(students$placement)
barplot(t1)


students3 = read.csv('./data/chumma.csv')
head(students3)

km3 = kmeans(students[,c('age','experience')],centers = 3)
km3$centers
plot(students[,c('age','experience')], col = km3$cluster)


library(rpart)
library(rpart.plot)
tree = rpart(placement ~ .,data = students)
rpart.plot(tree,nn=T,cex=.8)
printcp(tree)
ndata = sample_n(students, 3)
ndata

predict(tree,newdata = ndata,type='class')
predict(tree, newdata = ndata, type = 'prob')

logitmodel1 = glm(placement ~ ., data = students, family = 'binomial')
summary(logitmodel1)
logitmodelf = glm(placement ~ age , data = students, family = 'binomial')
summary(logitmodelf)
