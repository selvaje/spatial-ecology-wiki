a:67:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Languages/Software integration: BASH and R";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:168:"Often there is a need to switch from one language to another one. The different languages need to communicate by passing files and variables, from one to the other one.";}i:2;i:59;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:227;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:230;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:231;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"
This is an example of a ";}i:2;i:233;}i:9;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:258;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"for bash loop";}i:2;i:260;}i:11;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:273;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:" where I use bash to initialize an R script using the  ";}i:2;i:275;}i:13;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:40:"http://en.wikipedia.org/wiki/End-of-file";i:1;s:3:"EOF";}i:2;i:330;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" function.";}i:2;i:378;}i:15;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:388;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:390;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:391;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"
The  ";}i:2;i:393;}i:19;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:399;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"export";}i:2;i:401;}i:21;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:407;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" bash function and the ";}i:2;i:409;}i:23;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:432;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Sys.getenv()";}i:2;i:434;}i:25;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:446;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:" R function allows to exchange variables between R and bash. We can use this functionality to embed an R command in bash.";}i:2;i:448;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:569;}i:2;i:5;i:3;s:3:"  
";}i:2;i:569;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:572;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:573;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:573;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Simple Bash and R";i:1;i:2;i:2;i:573;}i:2;i:573;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:573;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:876:"

## Basic script to show input/output dir and integration with R

# Specify environment variables
INDIR=~/ost4sem/project/input/
OUTDIR=~/ost4sem/project/output/

mkdir -p $INDIR
mkdir -p $OUTDIR

# Note: If ./project/ directory does not exist, can create with -p flag
# mkdir -p $INDIR

# Change directory to INDIR and pull "iris" dataset
wget -P $INDIR https://vincentarelbundock.github.io/Rdatasets/csv/datasets/iris.csv
ls $INDIR

export INDIR
export OUTDIR
export  filename=$(basename iris.csv .csv)
 
R --vanilla --no-readline -q  << 'EOF'
 
INDIR <- Sys.getenv(c('INDIR'))
OUTDIR <- Sys.getenv(c('OUTDIR'))
filename <- Sys.getenv(c('filename'))
 
iris_dat <- read.csv(paste0(INDIR, filename, ".csv"))
iris_dat$Petal.Area <- iris_dat$Petal.Length * iris_dat$Petal.Width

write.csv(iris_dat, paste0(OUTDIR, filename, "_edited.csv"))

EOF

head $OUTDIR/iris_edited.csv


";i:1;s:5:"bash|";i:2;s:19:"basic_bash_and_r.sh";}i:2;i:609;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1521;}i:35;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Bash For loop and R";i:1;i:2;i:2;i:1521;}i:2;i:1521;}i:36;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1521;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:868:"

export INDIR=~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/
export OUTDIR=~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/

# To compare processing speed, let's use the command time

time (
for file in $INDIR/20?0_TSSP_??-ENS-A2-SP20_43023435.tif  ; do 

export  filename=$(basename $file .tif)

R --vanilla --no-readline   -q  <<'EOF'

library(raster)

INDIR = Sys.getenv(c('INDIR'))
OUTDIR = Sys.getenv(c('OUTDIR'))
filename = Sys.getenv(c('filename'))

paste("start to process ",INDIR,"/",filename,".tif", sep="" )

data=raster(paste(INDIR,"/",filename,".tif",sep=""))
r1 = crop(data, extent(3825000,4527900,2565000,3080000))
writeRaster(r1 , paste(OUTDIR,"/",filename,"_crop.tif",sep="") , overwrite=TRUE )

# if you get a file you can export with write.table
# if you get a number you can use Sys.setenv() to export the variable in R:

EOF

done 
)
";i:1;s:5:"bash|";i:2;s:9:"bash_r.sh";}i:2;i:1559;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2453;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Bash multicore for loop and R";i:1;i:2;i:2;i:2453;}i:2;i:2453;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2453;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2453;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"The previous example can be transformed in multicore using xargs command.";}i:2;i:2496;}i:43;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2569;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"
The xargs command allows to pass the an argument to each single processor using the -n and -P options.";}i:2;i:2571;}i:45;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2674;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"
In our case the one image will be passed to one processor and the second image will be passed to the other processor. ";}i:2;i:2676;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2795;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:980:"

export  INDIR=~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/
export OUTDIR=~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/

time (

ls $INDIR/20?0_TSSP_??-ENS-A2-SP20_43023435.tif  | xargs -n 1 -P 6 bash  -c $'

file=$1
export  filename=$(basename $file .tif)

# pay attention to single quote that under xargs it need to escape by the \

R --vanilla --no-readline   -q  <<\'EOF\'
 
library(raster)
 
INDIR = Sys.getenv(c(\'INDIR\'))
OUTDIR = Sys.getenv(c(\'OUTDIR\'))
filename = Sys.getenv(c(\'filename\'))
 
paste0("start to process ",INDIR,"/",filename,".tif")
 
data=raster(paste(INDIR,"/",filename,".tif",sep=""))
r1 = crop(data, extent(3825000,4527900,2565000,3080000))

paste0("start to export ",INDIR,"/",filename,"_crop.tif")

writeRaster(r1 , paste(OUTDIR,"/",filename,"_crop.tif",sep="") , overwrite=TRUE)
 
# if you get a file you can export with write.table
# if you get a number you can use Sys.setenv() to export the variable in BASH:

EOF

' _  

)

";i:1;s:5:"bash|";i:2;s:15:"bash_r_xargs.sh";}i:2;i:2802;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2802;}i:50;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:3814;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:8:"Exercise";}i:2;i:3;i:3;s:8:"Exercise";}i:2;i:3816;}i:52;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:3824;}i:53;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3826;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:"
Search for a raster function in R able to calculate the standard deviation within a ";}i:2;i:3828;}i:55;a:3:{i:0;s:14:"multiplyentity";i:1;a:2:{i:0;s:1:"3";i:1;s:1:"3";}i:2;i:3913;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" circular moving window.";}i:2;i:3916;}i:57;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3940;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"
Apply the function to the crop image and export as bio";}i:2;i:3942;}i:59;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:3997;}i:60;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:1:"*";}i:2;i:3;i:3;s:1:"*";}i:2;i:3998;}i:61;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:3999;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"crop_stdev.tif.";}i:2;i:4000;}i:63;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4015;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4017;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4021;}i:66;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4021;}}