heart <- read.csv(file.choose(), header = TRUE)
heart
#line graph
x <- heart[1:15, "chol"]
plot(x,type = "o",col = "red",xlab = "gender",ylab = "chol", main = "heart details of male and female cholestrol level")
y <- heart[1:15, "cp"]
plot(y,type = "o",col = "blue",xlab = "gender",ylab = "cp", main = "heart details of male and female cp levels")

#pie chart
x <- heart[1:20, "oldpeak"]
Lables <- heart[1:20, "oldpeak"]
pie(x,Lables,main = "oldpeak in heart disease", col = rainbow(length(x)))
y <- heart[1:30, "fbs"]
Lables <- heart[1:30, "fbs"]
pie(y,Lables,main = "fbs levels", col = rainbow(length(y)))

#barplot
A <- heart[1:303, "age"]
C <- heart[1:303, "cp"]
barplot(A,names.arg = C,xlab = "age",ylab = "cp",main = "details of heart disease patients age and cp",col = "purple")
F <- heart[1:100, "fbs"]
O <- heart[1:100, "oldpeak"]
barplot(F,names.arg = O,xlab = "fbs",ylab = "oldpeak",main = "details of heart disese paitents fbs and oldpeak",col = "blue")


#boxplot
input_data <- heart[,c("age","cp")]
input_data
boxplot(age ~ cp,data = heart,xlab = "age",ylab = "cp",main = "details of heart attack patients", col = c("green","yellow"))

#scatter plot
sp <- heart[1:20, c("trtbps","thalachh")]
sp
plot(x=heart$trtbps,y=heart$thalachh,xlab = "trtbps",ylab = "thalachh",main = "trtbps vs thalachh", col = "red")

#create pdf
pdf("heart plot.pdf")
boxplot(input_data)
scatterplot(sp)
piechart(Lables)
dev.off()



