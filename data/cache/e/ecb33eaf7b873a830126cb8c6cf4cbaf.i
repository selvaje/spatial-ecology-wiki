a:145:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:91:"Use of environmental geostatitical methods for the study of soil heavy-metals concentration";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:107;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:109;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:111;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"INTRODUCTION";i:1;i:2;i:2;i:111;}i:2;i:111;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:111;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:111;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"Geostatistical techniques, as the Kriging technique, are widely used for the study and mapping of soil heavy-metals concentration.";}i:2;i:137;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:267;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:269;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Project objectives";i:1;i:3;i:2;i:269;}i:2;i:269;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:269;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:269;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"The main objective of this project was to automate the modeling and mapping steps for the application of the Kriging technique.
";}i:2;i:299;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:427;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:429;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:431;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"METADATA";i:1;i:2;i:2;i:431;}i:2;i:431;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:431;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:431;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:307:"The dataset used for the study contains the sampling results (n=70), measured using a regular grid of 200m width, made on the perimeter of an industrial area; in particular were sampled the soil's concentration of following heavy-metals: Al, As, Be, Cd, Co, Cr, Cu, Hg, Mn, Ni, Pb, Sb, Se, Sn, Tl, V and Zn.";}i:2;i:453;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:760;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:762;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Text files and tables";i:1;i:3;i:2;i:762;}i:2;i:762;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:762;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:762;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"The data set was imported in R environment from an *.txt file to a ";}i:2;i:795;}i:30;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:862;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"data-frame";}i:2;i:863;}i:32;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:873;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:" file that presents the following structure:
";}i:2;i:874;}i:34;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:919;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:921;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:927;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1088:"
str(punti)
'data.frame':   70 obs. of  17 variables:
 $ COD: Factor w/ 70 levels "ST1 ","ST10 ",..: 1 12 23 33 44 55 65 69 70 2 ...
 $ X  : num  2580900 2581100 2581300 2581500 2579100 ...                      
 $ Y  : num  4495500 4495500 4495500 4495500 4495300 ...                      
 $ AS : num  23.59 30.5 23 17.27 9.75 ...                                     
 $ BE : num  3.64 5.16 4.43 3.2 2.51 2.11 2.05 2.9 1.18 2.21 ...              
 $ CD : num  0.19 0.32 0.29 0.15 0.11 0.14 0.13 0.15 0.17 0.1 ...             
 $ CO : num  26.4 84 25.1 23.9 11.5 ...
 $ CR : num  55.5 55.1 53.9 82.6 39 ...
 $ CU : num  34.2 38.3 39.2 46.7 23.1 ...
 $ NI : num  36.7 39.4 39.2 57.1 18.6 ...
 $ PB : num  49.9 69.1 51.1 32 35.5 ...
 $ SB : num  1.07 1.49 1.17 0.77 0.92 0.75 0.92 0.89 0.7 0.75 ...
 $ SE : num  0.91 1.26 1.19 0.91 0.61 0.78 0.43 0.59 0.37 0.38 ...
 $ SN : num  3.31 6.08 3.91 3.85 3.62 3.57 3 3.95 1.93 2.62 ...
 $ TL : num  1.31 2.13 1.65 0.94 0.96 0.64 0.95 1.13 0.67 1.25 ...
 $ V  : num  113.5 133.2 110.2 126.4 72.5 ...
 $ ZN : num  127.7 126.1 143.9 153.8 95.3 ...
";i:1;s:1:"r";i:2;N;}i:2;i:927;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:927;}i:39;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2026;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2028;}i:41;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2030;}i:42;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"METHOD";i:1;i:2;i:2;i:2030;}i:2;i:2030;}i:43;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2030;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2030;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"The data analysis was done by means of the following steps:";}i:2;i:2050;}i:46;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2109;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"
* statistical analysis: data distribution control and their validation;";}i:2;i:2111;}i:48;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2183;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:158:"
* geostatistical analysis: study of the variogram map, experimental semi-variogram creation, choice of the model and its parameters (nugget, range and sill);";}i:2;i:2185;}i:50;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2343;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"
* Kriging interpolation: creation of the isoconcentration maps and their cross-validation.
";}i:2;i:2345;}i:52;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2437;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2439;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2440;}i:55;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2440;}i:56;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DATA IMPORT";i:1;i:2;i:2;i:2440;}i:2;i:2440;}i:57;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2440;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:64:"
punti=read.csv2("~/ost4sem/project/input/punti.csv", header=T)
";i:1;s:1:"r";i:2;N;}i:2;i:2469;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2469;}i:60;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2544;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2546;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2547;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2547;}i:64;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"DATA PROCESSING";i:1;i:2;i:2;i:2547;}i:2;i:2547;}i:65;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2547;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2547;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:216:"A preliminary statistical analysis was performed to individuate the presence of eventual outliers, that were then eliminated from the original dataset, and to verify the data normality or log-normality distribution.
";}i:2;i:2576;}i:68;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2792;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"
The following R packages were used during this analysis:";}i:2;i:2794;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2851;}i:71;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:86:"
#installo i paccheti necessari
install.packages(c("outliers", "nortest", "automap"))
";i:1;s:1:"r";i:2;N;}i:2;i:2858;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2858;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"The visualization of the box-plot and the normal-qqplot provide an initial idea about the presence of outliers.";}i:2;i:2956;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3073;}i:75;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:325:"
#creo i boxplot
a=3
for (i in c("As","Be","Cd","Co","Cr","Cu","Ni","Pb","Sb","Se","Sn","Tl","V","Zn")){
    png(paste("~/ost4sem/project/output/boxplot_",i,".png",sep=""),width = 800, height = 800)
    a=a+1
    boxplot(punti[[a]], main=i, cex.main=3, cex=2, axes=F, col=7)
    axis(2, cex.axis=2)
    box()
    dev.off()
}
";i:1;s:1:"r";i:2;N;}i:2;i:3073;}i:76;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3073;}i:77;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:23:":wiki:boxplot_selow.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3409;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:3437;}i:79;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3443;}i:80;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:479:"
#creo i qqplot
a=3
for (i in c("As","Be","Cd","Co","Cr","Cu","Ni","Pb","Sb","Se","Sn","Tl","V","Zn")){
    png(paste("~/ost4sem/project/output/qqplot_",i,".png",sep=""),width = 800, height = 800)
    a=a+1    
    par(mar=c(6,6,5,1))
    qqnorm(punti[[a]], main=i, cex.main=3, cex=2,
     axes=F, xlab="Theoretical Quantiles",ylab="Sample Quantiles", cex.lab=2 )
    axis(2, cex.axis=2)
    axis(1, cex.axis=2)
    box()
    qqline(punti[[a]], lwd=2, col="red")
    dev.off()
}
";i:1;s:1:"r";i:2;N;}i:2;i:3443;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3443;}i:82;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:22:":wiki:qqplot_selow.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3933;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:3960;}i:84;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3961;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"
The outliers individuated were then eliminated using the ";}i:2;i:3963;}i:86;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4021;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"outliers";}i:2;i:4022;}i:88;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4030;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" package. ";}i:2;i:4031;}i:90;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4041;}i:91;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:133:"
#rimuovo gli outliers
library(outliers)
elementi_wo=punti
for (i in c(4:17)){
elementi_wo[[i]]= rm.outlier(punti[[i]], fill=TRUE)
}
";i:1;s:1:"r";i:2;N;}i:2;i:4048;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4048;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"The histograms provide an initial idea about the data distribution.";}i:2;i:4193;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4260;}i:95;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:420:"
#creo gli istogrammi
a=3
for (i in c("As","Be","Cd","Co","Cr","Cu","Ni","Pb","Sb","Se","Sn","Tl","V","Zn")){
    png(paste("~/ost4sem/project/output/ist_",i,".png",sep=""),width = 800, height = 800)
    a=a+1
    par(mar=c(6,6,5,1))
    hist(elementi_wo[[a]], main=i, cex.main=3, axes=F, xlab="Concentration",ylab="Frequency", cex.lab=2, col=3)
    axis(2, cex.axis=2)
    axis(1, cex.axis=2)
    box()
    dev.off()
}
";i:1;s:1:"r";i:2;N;}i:2;i:4267;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4267;}i:97;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:19:":wiki:ist_selow.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:4698;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4722;}i:99;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4723;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"
For the study of the data distribution the Lilliefors's test was used.";}i:2;i:4725;}i:101;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4802;}i:102;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:799:"
# verifico la normalità o la log-normalità della distribuzione dei dati ed elimino quelli con distribuzione non gaussiana
library(nortest)
elementi_norm=elementi_wo
test=matrix(data = NA, nrow = 1, ncol = 14,dimnames = list("p-value", c("As","Be","Cd","Co","Cr","Cu","Ni","Pb","Sb","Se","Sn","Tl","V","Zn")))
for (i in c(4:17)){
  if (lillie.test(elementi_wo[[i]])[[2]]>=0.01){
  elementi_norm[[i]]=elementi_wo[[i]] 
  test_=lillie.test(elementi_wo[[i]]) 
  test[,i-3]=test_[[2]]}
  else
      if (lillie.test(log(elementi_wo[[i]]))[[2]]>=0.01){
	elementi_norm[[i]]=log(elementi_wo[[i]])
	test_=lillie.test(elementi_wo[[i]]) 
	test[,i-3]=test_[[2]]}
      else{
	elementi_norm[[i]]=0
	test_=lillie.test(elementi_wo[[i]]) 
	test[,i-3]=test_[[2]]}
write.table(test, file = "test_normalità.txt")
}
";i:1;s:1:"r";i:2;N;}i:2;i:4802;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4802;}i:104;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5612;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5614;}i:106;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5616;}i:107;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Model parametrization";i:1;i:3;i:2;i:5616;}i:2;i:5616;}i:108;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5616;}i:109;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5616;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"The ";}i:2;i:5649;}i:111;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5653;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"automap";}i:2;i:5654;}i:113;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5661;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:153:" package was used to obtain the experimental semi-variogram and to compare the use of several models (shperical, exponential, gaussian and Matern model).";}i:2;i:5662;}i:115;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5815;}i:116;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5817;}i:117;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Model prediction";i:1;i:3;i:2;i:5817;}i:2;i:5817;}i:118;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5817;}i:119;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5817;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"The best model was then used for the Kriging technique and the heavy-metals distribution concentration maps were obtained. ";}i:2;i:5845;}i:121;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5968;}i:122;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5970;}i:123;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Validation";i:1;i:3;i:2;i:5970;}i:2;i:5970;}i:124;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5970;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5970;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:160:"A cross-validation for the comparison of the estimated values and the sampled ones was done and the maps of the standard error distribution were then obtained. ";}i:2;i:5992;}i:127;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6152;}i:128;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:479:"
#kriging
library(sp)
coordinates(elementi_norm) = ~X + Y
library(automap)
a=2
for (i in c("As","Be","Cd","Co","Cr","Cu","Ni","Pb","Sb","Se","Sn","Tl","V","Zn")){
  if (mean(elementi_norm[[a]])!=0){
    png(paste("~/ost4sem/project/output/automap_",i,".png",sep=""),width = 800, height = 800)
    plot(autoKrige(elementi_norm[[a]]~1,elementi_norm, model = c("Sph", "Exp", "Gau", "Ste")))    
    dev.off()}
  else print(paste(i, "non ha distribuzione normale", sep=" "))
a=a+1
}
";i:1;s:1:"r";i:2;N;}i:2;i:6159;}i:129;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6649;}i:130;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"RESULTS and DISCUSSION";i:1;i:2;i:2;i:6649;}i:2;i:6649;}i:131;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:6649;}i:132;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6649;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"Insert a map and related table or graphics if available";}i:2;i:6684;}i:134;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:6739;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"
Discuss the biological or geographical significance of results";}i:2;i:6741;}i:136;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:6804;}i:137;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:6806;}i:138;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:20:":wiki:automap_se.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:6807;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:6832;}i:140;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:6833;}i:141;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:6835;}i:142;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6835;}i:143;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6835;}i:144;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6835;}}