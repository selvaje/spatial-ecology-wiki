a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:58:"Plotting a confusion matrix and calculate kappa statistics";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:76;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"generate simulated data";i:1;i:3;i:2;i:76;}i:2;i:76;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:76;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:982:"
library(PresenceAbsence)
     set.seed(666)
     N=1000
N
     SIMDATA<-matrix(0,N,3)
str(SIMDATA)
     SIMDATA<-as.data.frame(SIMDATA)
str(SIMDATA)
     names(SIMDATA)<-c("plotID","Observed","Predicted")
     SIMDATA$plotID<-1:N
str(SIMDATA)
     SIMDATA$Observed<-rbinom(n=N,size=1,prob=.2)
str(SIMDATA)
     SIMDATA$Predicted[SIMDATA$Observed==1]<-rnorm(n=length(SIMDATA$Observed[SIMDATA$Observed==1]),mean=.8,sd=.15)
     SIMDATA$Predicted[SIMDATA$Observed==0]<-rnorm(n=length(SIMDATA$Observed[SIMDATA$Observed==0]),mean=.2,sd=.15)
     SIMDATA$Predicted<-(SIMDATA$Predicted-min(SIMDATA$Predicted))/(max(SIMDATA$Predicted)-min(SIMDATA$Predicted))

     ### plot simulated data
     hist(SIMDATA$Predicted,100)
     hist(SIMDATA$Observed,100)
     ### calculate confusion matrix ###
     confusion.matrix=cmx(SIMDATA)
     Kappa(confusion.matrix, st.dev = TRUE)

data(SIM3DATA)

     cmx(SIM3DATA)
     cmx(SIM3DATA,which.model=2)
     cmx(SIM3DATA,which.model=3,threshold=.2)

";i:1;s:1:"r";i:2;N;}i:2;i:115;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1107;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1107;}}