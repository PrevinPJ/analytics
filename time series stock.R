# xts  - create object and export data
library(xts)
#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)



ndates = as.Date("2018-9-1") + 0:30
ndates
m1 = matrix(sample(c(rnorm(90,150,10))), nrow = 30)
m1
dtindex2 = as.Date(m1, format="%d-%m-%Y")
ts_xts2 = xts(x=m1, order.by=ndates)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")