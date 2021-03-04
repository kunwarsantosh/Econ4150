getwd()
setwd("C:\\Users\\santosh.kunwar01\\Documents\\R\\EUR\\Econ4150")
getwd()

?read
??read

library(haven)
haven::read_dta("intf.dta")
intf <- haven::read_dta("intf.dta")
intf

rm(var.labels)
####################### Extract Column Names
library(sjlabelled)

intfl <- label_to_colnames(intf)
rm(intfl)
intfcsv <- label_to_colnames(intf)
write.csv(intfcsv, file = "intfcsv.csv")

#get_label(intf)
labelnames <- list(get_label(intf))
labelnames
write.csv(labelnames,file = "intfl.csv")

write.csv(intf,file = "intf.csv")


library(expss)
val_lab(intf)

??`val_lab<-`
install.packages("readstata13")
library(readstata13)
get.label(intf$hgcomp)
get.label.name(intf)
