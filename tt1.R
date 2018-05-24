getwd()
Titanik<-read.csv("file:///C:/Users/Kruti/AppData/Local/Temp/Titanic train.csv",header = T)

Titanik$Survivedlabel<-ifelse(Titanik$Survived ==1,"Survived" , "died")

Titanik$familysize <- 1 +Titanik$SibSp +  Titanik$Parch
str(Titanik)

males<-Titanik[Titanik$Sex=="male",]
summary(males$Fare)
var(males$Fare)
sd(males$Fare)
sum(males$Fare)
length(males$Fare)


first.Five<-Titanik[1:5,]

library(ggplot2)
ggplot(Titanik,aes(x=familysize,fill=Survivedlabel))+theme_bw()+facet_wrap(Sex ~Pclass)+geom_histogram(binwidth=1)






