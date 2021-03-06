a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:79:"Bivariate plot of predictor variables correlation for testing multicollinearity";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:92;}i:4;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:92;}i:5;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:92;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:1;i:3;s:6:"

  * ";}i:2;i:92;}i:7;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:0:"";i:1;s:17:"Multicollinearity";}i:2;i:98;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:" is a statistical phenomenon in which two or more predictor variables in a multiple regression model are highly correlated.";}i:2;i:120;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:3;i:3;s:123:" is a statistical phenomenon in which two or more predictor variables in a multiple regression model are highly correlated.";}i:2;i:120;}i:10;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:243;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:211:"
In the presence of multicollinearity, the estimate of one variable's impact on y while checking for the others tends to be less precise than if predictors were uncorrelated with one another (sources Wikipedia).";}i:2;i:245;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:3;i:3;s:210:"In the presence of multicollinearity, the estimate of one variable's impact on y while checking for the others tends to be less precise than if predictors were uncorrelated with one another (sources Wikipedia).";}i:2;i:246;}i:13;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:456;}i:14;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:458;}i:15;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:458;}i:16;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:458;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:4;i:3;s:1:"
";}i:2;i:458;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:458;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:276:"Plotting a bivariate correlation matrix between predictor variables ranked according to their importance in a random forest model, allows us to study the potential effect of multicollinearity.
We expect high correlated variables having similar ranking values and the opposite.";}i:2;i:460;}i:20;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:736;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:738;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:738;}i:23;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:742;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:744;}i:25;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:745;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:747;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3154:"
# load libraries
library(foreign) # needed for  "read.dbf"
library(gdata) # needed for "drop levels"
library(lattice)
\\
# load predictors DataFrame and clean it from the NA values

INPUT = ("~/ost4sem/exercise/basic_adv_r/inputs/")
OUTPUT = ("~/ost4sem/exercise/basic_adv_r/outputs/")

# load data
load(paste(INPUT,"predictor_rank",sep=""))

# select and rank data
pred44 = subset(predictor_rank, select =c(pr123,pr103,pr101,pr120,pr126,pr127,pr128,pr200,pr201,pr111,pr136,pr202,pr138,pr134,pr198,pr110,pr131,pr122,pr104,pr118,pr105,pr106,pr137,pr102,pr139,pr135,pr108,pr121,pr109,pr2626,pr124,pr199,pr129,pr116,pr125,pr203,pr112,pr114,pr117,pr113,pr107,pr204,pr115,pr119))
pred44$pr2626  = as.numeric(pred44$pr2626)


# Create a bivariate correlation matrix using adjusted R squared error values
mat = matrix(NA, nrow=44, ncol=44)
for (li in 1:44){
for (co in 1:44){
temp = lm(pred44[[li]]~ pred44[[co]])
mat[li,co] = summary(temp)$adj.r.squared
}}
colnames(mat)= names(pred44)
rownames(mat) = names(pred44)


# ------ Define a function for plotting a matrix ------ #
# original function image()
# modified function : http://www.phaget4.org/R/image_matrix.html
myImagePlot <- function(x, ...){
     min <- min(x)
     max <- max(x)
     yLabels <- rownames(x)
     xLabels <- colnames(x)
     title <-c()
  # check for additional function arguments
  if( length(list(...)) ){
    Lst <- list(...)
    if( !is.null(Lst$zlim) ){
       min <- Lst$zlim[1]
       max <- Lst$zlim[2]
    }
    if( !is.null(Lst$yLabels) ){
       yLabels <- c(Lst$yLabels)
    }
    if( !is.null(Lst$xLabels) ){
       xLabels <- c(Lst$xLabels)
    }
    if( !is.null(Lst$title) ){
       title <- Lst$title
    }
  }
# check for null values
if( is.null(xLabels) ){
   xLabels <- c(1:ncol(x))
}
if( is.null(yLabels) ){
   yLabels <- c(1:nrow(x))
}

layout(matrix(data=c(1,2), nrow=1, ncol=2), widths=c(4,1), heights=c(1,1))

 # Red and green range from 0 to 1 while Blue ranges from 1 to 0
 ColorRamp <- rgb( seq(0,1,length=256),  # Red
                   seq(0,1,length=256),  # Green
                   seq(1,0,length=256))  # Blue
 ColorLevels <- seq(min, max, length=length(ColorRamp))

 # Reverse Y axis
 reverse <- nrow(x) : 1
 yLabels <- yLabels[reverse]
 x <- x[reverse,]

 # Data Map
 par(mar = c(3,5,2.5,2))
 image(1:length(xLabels), 1:length(yLabels), t(x), col=ColorRamp, xlab="",
 ylab="", axes=FALSE, zlim=c(min,max))
 if( !is.null(title) ){
    title(main=title)
 }
axis(BELOW<-1, at=1:length(xLabels), labels=xLabels, cex.axis=0.7)
 axis(LEFT <-2, at=1:length(yLabels), labels=yLabels, las= HORIZONTAL<-1,
 cex.axis=0.7)

 # Color Scale
 par(mar = c(3,2.5,2.5,2))
 image(1, ColorLevels,
      matrix(data=ColorLevels, ncol=length(ColorLevels),nrow=1),
      col=ColorRamp,
      xlab="",ylab="",
      xaxt="n")
 layout(1)
}
# ----- END plot function ----- #

paste(OUTPUT,"predictor_rank",sep="")
png(paste(INPUT,"bivariate_correlation.png",sep=""),width = 1500, height = 1000)
myImagePlot(mat, xlabels=dimnames(mat)[[1]], ylabels=dimnames(mat)[[1]],  title=c("Bivariate correlations of predictor variables - Adjusted r squared values"),cex=2) 
dev.off()

";i:1;s:1:"r";i:2;N;}i:2;i:754;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3918;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3918;}}