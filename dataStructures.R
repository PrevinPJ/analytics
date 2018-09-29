#Data Structure in R

#Vectors----
x = 1:10
x
(x1 = 1:30)
(x2 = c(1,3,5,7))
class (x2)

(x3 = letters[1:10])

class (x3)

(x3b = c('a',"previn","10"))
LETTERS[1:26]
class (x3b)

(x4 = c(T,FALSE,TRUE,F))
class(x4)

x5 = c(3L,5L)
class (x5)
(x5b = c(1,'a',T,4L))
class (x5b)

#access elements

(x6 = seq(0,100,5))
methods ( class = 'numeric')
ls() #variables in my environment
x6
length(x6)
x6[15] #access 15th element
x6[c(2,4)]
x6[-2]
x6
x6[-c(1:10)] # cannot mix negative and positive integers
x6[-(length(x6)-1)]

#modify elements

sort(x6)
sort(x6,decreasing = T)
x6
rev(x6)
x6
seq(-3,10,.2)
(x = -3:2)

x[2] = 0
x
x[x<=0]=5
x
x = x[1:4];x #truncation to first 4 elements

(x = seq(1,5,length.out = 10))

x = NULL #delete vector
x

(x = rnorm(100)) #normal distribution of mean = 0 stndard deviation = 1
(x1 = rnorm(10000,mean = 50, sd = 5))
plot(density(x1))
mean(x1)
abline(v=mean(x1),h=0.04)


#Matrices----


(m1 = matrix(1:12, nrow = 4)) #default - data filled by column
(m2 = matrix(1:12, ncol = 3, byrow = T))
x = 101:124
length(x)
matrix(x,ncol = 6)
class(m1)
attributes(m1)
dim(m1)

#access elements
m1
m1[1,2:3]
m1[c(1,3),] #print first and 3rd row with all the columns

paste("c","d",sep = "-")

(colnames(m1) = paste('C',1:3,sep = ''))
(rownames(m1) = paste('R',1:4,sep = ''))
attributes(m1)
dim(m1)

#vector to matrix
(m3 = 1:24)

m1

m1[c('R1'),]

m2
m2[2,2] = 10
m2
#rbind and cbind for temporary assignment

colSums(m1);rowSums(m1)
colMeans(m1);rowMeans(m1)
m1
t(m1)
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+") #rowwise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*") #colwise

#addmargins
addmargins(m1,margin=1,sum) #colwise function
addmargins(m1,2,mean) #row wise function
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))





#Arrays----






#Data Frame----



















#Factors----

#Lists----