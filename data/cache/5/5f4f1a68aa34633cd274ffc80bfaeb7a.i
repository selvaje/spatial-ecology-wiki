a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:62:"Use of qsub and xargs in for running R sections simultaneously";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"We have seen in the  ";}i:2;i:78;}i:5;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:12:"cluster_qsub";i:1;s:79:" Transform a simple "for loop script" in multicore "for loop script" using qsub";}i:2;i:99;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:" how to use qsub and xargs to perform multicore processing. Now we see how to integrate R in xargs and run the job by qsub. ";}i:2;i:198;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:322;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:322;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"The object of the exercise is to calculate the Moran's I index (using R) inside the polygons of the poly_fr.sh shape file.";}i:2;i:324;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:447;}i:11;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:77:" # logging to yaleHPC from your terminal
 ssh -X geodata??@omega.hpc.yale.edu";}i:2;i:447;}i:12;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1259:" cd $HOME
 wget https://dl.dropboxusercontent.com/u/29337496/.bashrc 
 source $HOME/.bashrc
 # if you do not have the folder or you are log to the Yale-HPC
 
 mkdir -p $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/output_txt
 mkdir -p $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_tif
 cd $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_tif
 wget https://dl.dropboxusercontent.com/u/29337496/2020_TSSP_IP-ENS-A2-SP20_43023435.tif
 wget https://dl.dropboxusercontent.com/u/29337496/2050_TSSP_IP-ENS-A2-SP20_43023435.tif
 wget https://dl.dropboxusercontent.com/u/29337496/2080_TSSP_IP-ENS-A2-SP20_43023435.tif
 
 mkdir -p $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp
 cd $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp
 wget https://dl.dropboxusercontent.com/u/29337496/poly_fr.dbf
 wget https://dl.dropboxusercontent.com/u/29337496/poly_fr.prj
 wget https://dl.dropboxusercontent.com/u/29337496/poly_fr.qpj
 wget https://dl.dropboxusercontent.com/u/29337496/poly_fr.shp
 wget https://dl.dropboxusercontent.com/u/29337496/poly_fr.shx
 
 $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/
 wget https://dl.dropboxusercontent.com/u/29337496/myQSUBXARGSRscript4cluster.sh
 ";}i:2;i:531;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:531;}i:14;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1838;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"
Split the shape file in 2 shape files with a single polygon 
";}i:2;i:1840;}i:16;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1902;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1904;}i:18;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:449:" ogr2ogr  -select   id   -where 'id=2'       $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp/poly_fr2.shp $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp/poly_fr.shp
 ogr2ogr  -select   id   -where 'id=1'       $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp/poly_fr1.shp $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp/poly_fr.shp
 mkdir /$HOME/stdout
 mkdir /$HOME/stderr";}i:2;i:1904;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1904;}i:20;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2363;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2365;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1932:"
# qsub syntax 
# for file in  $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_tif/20?0_TSSP_IP-ENS-A2-SP20_43023435.tif  ; do qsub   -v file=$file $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/myQSUBXARGSRscript4cluster.sh  ; done 
 
# bash syntax
# for file in  $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_tif/2020_TSSP_IP-ENS-A2-SP20_43023435.tif  ; do bash  $HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/myQSUBXARGSRscript4cluster.sh   $file ; done  
 
 
#PBS -S /bin/bash 
#PBS -q devel
#PBS -l walltime=0:02:00   
#PBS -l nodes=1:ppn=2      
#PBS -V
#PBS -o /$HOME/stdout       
#PBS -e /$HOME/stderr 
 
# varibles

# export file=$1
export file=$file 
export INTIF=$HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_tif
export INSHP=$HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/input_shp
export OUTTXT=$HOME/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/output_txt
export filename=$(basename $file .tif)


ls $INSHP/poly_fr?.shp  | xargs -n 1 -P 2 bash  -c $'

SHP=$1
shpname=$(basename $SHP .shp)
export id=${shpname:7:1}
echo id = $id  

pkcrop -ot Int16   -m -1 -e  $SHP -i $file -o $INTIF/${filename}_crop${id}.tif 

export file_crop=$INTIF/${filename}_crop${id}.tif 

echo beforR $file_crop
# start R and import bash variables (the file name)

echo  $file_crop
R --vanilla -q <<EOF

# install.packages("rgdal")
# install.packages("raster")
library(rgdal)
library(raster)

file_crop = Sys.getenv(\'file_crop\')
OUTTXT = Sys.getenv(\'OUTTXT\')
filename = Sys.getenv(\'filename\')
id = Sys.getenv(\'id\')

rastD = raster( file_crop)

rastD = raster(file_crop )
M_text = Moran(rastD, w=matrix(1, 3, 3))
M_text

write.table (M_text[1] ,paste(OUTTXT,"/","poly",id,"_",filename,".txt",sep="" )  ,row.names = F , col.names = F)

EOF

' _ 

cat   $OUTTXT/poly*_${filename}.txt   >   $OUTTXT/poly_${filename}.txt  
exit 
checkjob -v $PBS_JOBID 

";i:1;s:5:"bash|";i:2;s:29:"myQSUBXARGSRscript4cluster.sh";}i:2;i:2372;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4350;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4350;}}