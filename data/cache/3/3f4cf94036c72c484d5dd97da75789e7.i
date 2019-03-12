a:64:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:93:"Language integration: import/export variables and integrate different languages in one script";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:"Often there is a need to switch from one language to another one. The different languages need to communicate by passing variables from one to the other one.";}i:2;i:112;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:269;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:272;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:273;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"
This is an example of a ";}i:2;i:275;}i:9;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:300;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"for bash loop";}i:2;i:302;}i:11;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:315;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:" where I do something in bash then I start an R script using the  ";}i:2;i:317;}i:13;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:40:"http://en.wikipedia.org/wiki/End-of-file";i:1;s:3:"EOF";}i:2;i:383;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" function.";}i:2;i:431;}i:15;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:441;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:443;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:444;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"
The  ";}i:2;i:446;}i:19;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:452;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"export";}i:2;i:454;}i:21;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:460;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" bash function and the ";}i:2;i:462;}i:23;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:485;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Sys.getenv()";}i:2;i:487;}i:25;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:499;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:" R function allows to exchange variables between R and bash. We can use this functionality to embed an R command in bash.";}i:2;i:501;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:622;}i:2;i:5;i:3;s:3:"  
";}i:2;i:622;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:625;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:820:"

export INDIR=path/path/path
export OUTDIR=path/path/path

for file in $INDIR/input[1-3].tif  ; do 

# crop the image based on polygon shapefile (poly.shp) 
export  filename=`basename $file .tif`
pkcrop  -e $INDIR/poly.shp  $file -o $OUTDIR/${filename}_crop.tif   

R --vanilla --no-readline   -q  << EOF

INDIR = Sys.getenv(c('INDIR'))
OUTDIR = Sys.getenv(c('OUTDIR'))
filename = Sys.getenv(c('filename'))

paste("do somthing with",INDIR,"/",filename,"_crop.tif" )

# if you get a file you can export with write.table

# if you get a number you can use Sys.setenv() to export the variable in R:

EOF

# continue the operation in bash loop  eventually 
# using the variable settled by Sys.setenv()

done 

# continue the operation in bash outside from the loop 
# eventually using the variable settled by Sys.setenv()

";i:1;s:4:"bash";i:2;N;}i:2;i:634;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:634;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:192:"The previous example is useful if the R part is not long and can be integrate in the bash script as a text. Instead if the R script is long we can store it as an Rscript and call it from bash.";}i:2;i:1469;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:1661;}i:2;i:5;i:3;s:4:"   
";}i:2;i:1661;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1665;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:439:"

export INDIR=path/path/path
export OUTDIR=path/path/path

for file in $INDIR/input[1-3].tif  ; do 

# crop the image based on polygon shapefile (poly.shp) 
export  filename=`basename $file .tif`
pkcrop  -e $INDIR/poly.shp  $file -o $OUTDIR/${filename}_crop.tif

R --vanilla --no-readline  -q    <    myRscript.R

# Rscript myRscript.R

# continue the operation in bash loop

done 

# continue the operation in bash outside from the loop
";i:1;s:4:"bash";i:2;N;}i:2;i:1672;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1672;}i:36;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2125;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2127;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2127;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:"In bash/c like command you can pass variables by setting arguments or by using the ";}i:2;i:2130;}i:40;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"EOF";}i:2;i:2213;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" syntax.";}i:2;i:2216;}i:42;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2224;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:2227;}i:2;i:5;i:3;s:3:"  
";}i:2;i:2227;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"Let's suppose that the 3 tif are overlapping the same area and that I want make the sum of the 3. ";}i:2;i:2230;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2328;}i:46;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:288:" 
gdalbuildvrt $OUTDIR/merge.vrt $INDIR/input[1-3].tif 
gdal_translate $OUTDIR/merge.vrt $OUTDIR/merge.tif

                      # first argument   # second argument
oft-calc  -ot Float64 $OUTDIR/merge.tif  $OUTDIR/sum.tif  <<EOF # inputs requested from the oft-calc
1
#1 #2 #3 + +
EOF

";i:1;s:4:"bash";i:2;N;}i:2;i:2335;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2335;}i:48;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2637;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"
In R you can call bash commands by the R command ";}i:2;i:2639;}i:50;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2689;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"system()";}i:2;i:2691;}i:52;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2699;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2701;}i:54;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2702;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2704;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2710;}i:57;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3:"
R
";i:1;s:4:"bash";i:2;N;}i:2;i:2710;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:18:"

system("pwd") 

";i:1;s:4:"bash";i:2;N;}i:2;i:2733;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2733;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:141:"So you can use several bash commands and so olso gdal commands (such as gdal_translate). In this case your main working environment will be R";}i:2;i:2766;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2907;}i:62;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2911;}i:63;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2911;}}