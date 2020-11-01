a:69:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:64:"Geocomputation at High Performance Computing Cluster (HPC) Grace";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:27:":wiki:cluster_computing.jpg";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:79;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:117;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:120;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Filter an image";i:1;i:2;i:2;i:120;}i:2;i:120;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:120;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:120;}i:10;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:20:"overview_scripts.png";i:1;s:0:"";i:2;s:4:"left";i:3;s:4:"1000";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:149;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:180;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:180;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Status of the jobs in slurm can be seen by:";}i:2;i:183;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:226;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:25:"squeue --all
sacct
sinfo
";}i:2;i:228;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:228;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"building up some specific alias and save to $HOME/.bashrc";}i:2;i:264;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:322;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:713:"alias myq='squeue -u $USER   -o "%.9F %.10K %.4P %.80j %3D%2C%.8T %.9M  %.9l  %.S  %R"'
alias err='ll -rt    /gpfs/scratch60/fas/sbsc/$USER/stderr/*'
alias errl='ll -rt    /gpfs/scratch60/fas/sbsc/$USER/stderr/* | tail '
alias errlless=' less  $(ls  -rt    /gpfs/scratch60/fas/sbsc/$USER/stderr/* | tail -1 ) '
alias errlmore=' more  $(ls  -rt    /gpfs/scratch60/fas/sbsc/$USER/stderr/* | tail -1 ) '
alias out='ll -rt    /gpfs/scratch60/fas/sbsc/$USER/stdout/*'
alias outl='ll -rt    /gpfs/scratch60/fas/sbsc/$USER/stdout/* | tail '
alias outlless=' less  $(ls  -rt    /gpfs/scratch60/fas/sbsc/$USER/stdout/* | tail -1 ) '
alias outlmore=' more  $(ls  -rt    /gpfs/scratch60/fas/sbsc/$USER/stdout/* | tail -1 ) '";}i:2;i:322;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1056;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Prepare raster dataset";i:1;i:3;i:2;i:1056;}i:2;i:1056;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1056;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1056;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"A portion of a ";}i:2;i:1090;}i:25;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:103:"http://www.spatial-ecology.net/ost4sem/exercise/KenyaGIS/Landsat/LT51680612010231MLK00_B123_proj.tar.gz";i:1;s:16:" Landsat image  ";}i:2;i:1105;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1231;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1233;}i:28;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:881:" wget http://www.spatial-ecology.net/ost4sem/exercise/KenyaGIS/Landsat/LT51680612010231MLK00_B123_proj.tar.gz
 tar -xvzf LT51680612010231MLK00_B123_proj.tar.gz
 ### download the scripts 
 wget -N -O sc01_split_tif.sh "http://www.spatial-ecology.net/dokuwiki/doku.php?do=export_code&id=wiki:anunna_setting&codeblock=0"
 wget -N -O sc02a_filter_tif_forloop.sh "http://www.spatial-ecology.net/dokuwiki/doku.php?do=export_code&id=wiki:anunna_setting&codeblock=1"
 wget -N -O sc02b_filter_tif_xargs.sh "http://www.spatial-ecology.net/dokuwiki/doku.php?do=export_code&id=wiki:anunna_setting&codeblock=2"
 wget -N -O sc02c_filter_tif_njobs.sh "http://www.spatial-ecology.net/dokuwiki/doku.php?do=export_code&id=wiki:anunna_setting&codeblock=3"
 wget -N -O sc02d_filter_tif_arrayjobs.sh "http://www.spatial-ecology.net/dokuwiki/doku.php?do=export_code&id=wiki:anunna_setting&codeblock=4"
 ";}i:2;i:1233;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1233;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"will be divided in 4 vrt tiles each one containing 3 bands. The vrt will be used in the following scripting procedures.";}i:2;i:2135;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:2254;}i:2;i:5;i:3;s:4:"   
";}i:2;i:2254;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2258;}i:33;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:78:"
sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc01_split_tif.sh";}i:2;i:2258;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1477:"
#!/bin/bash
#SBATCH -p day
#SBATCH -J sc01_split_tif.sh
#SBATCH -n 1 -c 1 -N 1
#SBATCH -t 1:00:00 
#SBATCH -o /gpfs/scratch60/fas/sbsc/ga254/stdout/sc01_split_tif.sh.%J.out
#SBATCH -e /gpfs/scratch60/fas/sbsc/ga254/stderr/sc01_split_tif.sh.%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email
#SBATCH --mem-per-cpu=4G

####### sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc01_split_tif.sh

module load GEOS/3.6.2-foss-2018a-Python-2.7.14 
module load GDAL/2.2.3-foss-2018a-Python-2.7.14
module load GSL/2.3-GCCcore-6.4.0
module load Boost/1.66.0-foss-2018a
module load PKTOOLS/2.6.7.6-foss-2018a 
module load Armadillo/8.400.0-foss-2018a

DIR=/gpfs/loomis/home.grace/$USER/geocomputation/Landsat

gdalbuildvrt -overwrite -separate -te 36.5 -1.5 37 -1 $DIR/stack_UL.vrt $DIR/LT51680612010231MLK00_B1_proj.tif $DIR/LT51680612010231MLK00_B2_proj.tif $DIR/LT51680612010231MLK00_B3_proj.tif
gdalbuildvrt -overwrite -separate -te 36.5 -2 37 -1.5 $DIR/stack_LL.vrt $DIR/LT51680612010231MLK00_B1_proj.tif $DIR/LT51680612010231MLK00_B2_proj.tif $DIR/LT51680612010231MLK00_B3_proj.tif

gdalbuildvrt -overwrite -separate -te 37 -1.5 37.5 -1 $DIR/stack_UR.vrt $DIR/LT51680612010231MLK00_B1_proj.tif $DIR/LT51680612010231MLK00_B2_proj.tif $DIR/LT51680612010231MLK00_B3_proj.tif
gdalbuildvrt -overwrite -separate -te 37 -2 37.5 -1.5 $DIR/stack_LR.vrt $DIR/LT51680612010231MLK00_B1_proj.tif $DIR/LT51680612010231MLK00_B2_proj.tif $DIR/LT51680612010231MLK00_B3_proj.tif


";i:1;s:5:"bash|";i:2;s:17:"sc01_split_tif.sh";}i:2;i:2348;}i:35;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3860;}i:36;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:67:"sc02a Proces 4 tiles in one node using a cpu with the bash for loop";i:1;i:3;i:2;i:3860;}i:2;i:3860;}i:37;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3860;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3860;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:233:"This is the easiest procedure to perform a geocomputation operation. Lunch a job that use a normal for loop to iterate on the 4 tiles. After the iterations (pkfilter) the for tiles can be re-merged by gdalbuildvrt and gdal_translate.";}i:2;i:3939;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4173;}i:41;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:87:"sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02a_filter_tif_forloop.sh";}i:2;i:4173;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1337:"
#!/bin/bash
#SBATCH -p day
#SBATCH -J sc02a_filter_tif_forloop.sh
#SBATCH -n 1 -c 1 -N 1
#SBATCH -t 1:00:00 
#SBATCH -o /gpfs/scratch60/fas/sbsc/ga254/stdout/sc02a_filter_tif_forloop.sh.%J.out
#SBATCH -e /gpfs/scratch60/fas/sbsc/ga254/stderr/sc02a_filter_tif_forloop.sh.%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email
#SBATCH --mem-per-cpu=4G

####### sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02a_filter_tif_forloop.sh

module load GEOS/3.6.2-foss-2018a-Python-2.7.14 
module load GDAL/2.2.3-foss-2018a-Python-2.7.14
module load GSL/2.3-GCCcore-6.4.0
module load Boost/1.66.0-foss-2018a
module load PKTOOLS/2.6.7.6-foss-2018a 
module load Armadillo/8.400.0-foss-2018a

DIR=/gpfs/loomis/home.grace/$USER/geocomputation/Landsat

echo filter the stack_??.vrt files 

for file in $DIR/stack_??.vrt  ; do 
filename=$(basename $file .vrt)
pkfilter -of GTiff  -dx 3 -dy 3  -f mean -co COMPRESS=DEFLATE -co ZLEVEL=9 -i $file -o  $DIR/$filename.tif 
done 

echo  re-create the large tif 

gdalbuildvrt -overwrite $DIR/stack.vrt   $DIR/stack_UL.tif  $DIR/stack_LL.tif    $DIR/stack_UR.tif   $DIR/stack_LR.tif  
GDAL_CACHEMAX=3000
gdal_translate -co COMPRESS=DEFLATE -co ZLEVEL=9  $DIR/stack.vrt $DIR/stack_filter.tif 
rm $DIR/stack_UL.tif  $DIR/stack_LL.tif    $DIR/stack_UR.tif   $DIR/stack_LR.tif $DIR/stack.vrt 

";i:1;s:5:"bash|";i:2;s:27:"sc02a_filter_tif_forloop.sh";}i:2;i:4270;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5653;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:59:"sc02b Multi-process inside one node using 4 cpu using xargs";i:1;i:3;i:2;i:5653;}i:2;i:5653;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5653;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5653;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:653:"This is one of the most efficient ways to perform a geocomputation operation. Lunch a job that use xargs to compute the iterations in a multicore (4 cpu in this case). After the iterations (pkfilter) the 4 tiles can be re-merged by gdalbuildvrt and gdal_translate. The use of xargs allows to constrains all the iterations in one node using different cpus. The advantage is that after xargs all the tiles will be ready to be merged back. A disadvantage can be that in case you are requesting many cpu (e.g. 24) you have to wait that one node will have 24 cpu free. A good compromise can be just requested 8-12 cpu and add more time to the wall time (-t) ";}i:2;i:5724;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6378;}i:49;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:85:"sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02b_filter_tif_xargs.sh";}i:2;i:6378;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1360:"
#!/bin/bash
#SBATCH -p day
#SBATCH -J sc02b_filter_tif_xargs.sh
#SBATCH -n 1 -c 4 -N 1
#SBATCH -t 1:00:00 
#SBATCH -o /gpfs/scratch60/fas/sbsc/ga254/stdout/sc02b_filter_tif_xargs.sh.%J.out
#SBATCH -e /gpfs/scratch60/fas/sbsc/ga254/stderr/sc02b_filter_tif_xargs.sh.%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email
#SBATCH --mem-per-cpu=4G

####### sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02b_filter_tif_xargs.sh

module load GEOS/3.6.2-foss-2018a-Python-2.7.14 
module load GDAL/2.2.3-foss-2018a-Python-2.7.14
module load GSL/2.3-GCCcore-6.4.0
module load Boost/1.66.0-foss-2018a
module load PKTOOLS/2.6.7.6-foss-2018a 
module load Armadillo/8.400.0-foss-2018a

export DIR=/gpfs/loomis/home.grace/$USER/geocomputation/Landsat

echo start the multicore computation

ls $DIR/stack_??.vrt | xargs -n 1 -P 4 bash -c $'  
file=$1
filename=$(basename $file .vrt)
pkfilter -of GTiff  -dx 3 -dy 3  -f mean -co COMPRESS=DEFLATE -co ZLEVEL=9 -i $file -o  $DIR/$filename.tif 
' _ 

echo  re-create the large tif 

gdalbuildvrt -overwrite $DIR/stack.vrt   $DIR/stack_UL.tif  $DIR/stack_LL.tif    $DIR/stack_UR.tif   $DIR/stack_LR.tif  
GDAL_CACHEMAX=10000
gdal_translate -co COMPRESS=DEFLATE -co ZLEVEL=9  $DIR/stack.vrt $DIR/stack_filter.tif 
rm $DIR/stack_UL.tif  $DIR/stack_LL.tif    $DIR/stack_UR.tif   $DIR/stack_LR.tif $DIR/stack.vrt 

";i:1;s:5:"bash|";i:2;s:25:"sc02b_filter_tif_xargs.sh";}i:2;i:6473;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7875;}i:52;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:60:"sc02c Proces 4 tiles with 4 indepent jobs - one node one cpu";i:1;i:3;i:2;i:7875;}i:2;i:7875;}i:53;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:7875;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7875;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:359:"This is a good way to run 4 independent jobs. Each job can perform one iteration. This option is good if need to lunch 100-200 jobs. You can also think that inside each job you can nest a xargs operation. The disadvantage is that each script will finish independently from the other so the only way to re-merge the tif is wait that all the jobs are finished. ";}i:2;i:7947;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8307;}i:57;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:195:"for file in /gpfs/loomis/home.grace/$USER/geocomputation/Landsat/stack_??.vrt 
do sbatch --export=file=$file  /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02c_filter_tif_njobs.sh 
done ";}i:2;i:8307;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1081:"
#!/bin/bash
#SBATCH -p day
#SBATCH -J sc02c_filter_tif_njobs.sh
#SBATCH -n 1 -c 1 -N 1
#SBATCH -t 1:00:00 
#SBATCH -o /gpfs/scratch60/fas/sbsc/ga254/stdout/sc02c_filter_tif_njobs.sh.%J.out
#SBATCH -e /gpfs/scratch60/fas/sbsc/ga254/stderr/sc02c_filter_tif_njobs.sh.%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email
#SBATCH --mem-per-cpu=4G

####### for file in /gpfs/loomis/home.grace/$USER/geocomputation/Landsat/stack_??.vrt  ; do sbatch --export=file=$file  /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02c_filter_tif_njobs.sh ; done 

module load GEOS/3.6.2-foss-2018a-Python-2.7.14 
module load GDAL/2.2.3-foss-2018a-Python-2.7.14
module load GSL/2.3-GCCcore-6.4.0
module load Boost/1.66.0-foss-2018a
module load PKTOOLS/2.6.7.6-foss-2018a 
module load Armadillo/8.400.0-foss-2018a

DIR=/gpfs/loomis/home.grace/$USER/geocomputation/Landsat

echo filter the $file file 

filename=$(basename $file .vrt)
pkfilter -of GTiff  -dx 3 -dy 3  -f mean -co COMPRESS=DEFLATE -co ZLEVEL=9 -i $file -o  $DIR/$filename.tif 

echo  re-create the large tif by another script
";i:1;s:5:"bash|";i:2;s:25:"sc02c_filter_tif_njobs.sh";}i:2;i:8516;}i:59;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9639;}i:60;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:71:"sc02c Proces 4 tiles with 1 job lunching 4-array-job - one node one cpu";i:1;i:3;i:2;i:9639;}i:2;i:9639;}i:61;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:9639;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9639;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:405:"This is a good way to run 4 independent jobs-array. Each job-array can perform one iteration. This option is good if you need to lunch many many computations (e.g. 1000-2000). You can also think that inside each job you can nest a xargs operation. The disadvantage is that each script will finish independently from the other so the only way to re-merge the tif is waiting that all the jobs are finished. ";}i:2;i:9722;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10128;}i:65;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:89:"sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02d_filter_tif_arrayjobs.sh";}i:2;i:10128;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1009:"
#!/bin/bash
#SBATCH -p day
#SBATCH -J sc02d_filter_tif_arrayjobs.sh
#SBATCH -n 1 -c 1 -N 1
#SBATCH -t 1:00:00 
#SBATCH -o /gpfs/scratch60/fas/sbsc/ga254/stdout/sc02d_filter_tif_arrayjobs.sh.%A_%a.out 
#SBATCH -e /gpfs/scratch60/fas/sbsc/ga254/stderr/sc02d_filter_tif_arrayjobs.sh.%A_%a.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email
#SBATCH --mem-per-cpu=4G
#SBATCH --array=1-4

####### sbatch /gpfs/loomis/home.grace/$USER/geocomputation/scripts/sc02d_filter_tif_arrayjobs.sh

module load GEOS/3.6.2-foss-2018a-Python-2.7.14 
module load GDAL/2.2.3-foss-2018a-Python-2.7.14
module load GSL/2.3-GCCcore-6.4.0
module load Boost/1.66.0-foss-2018a
module load PKTOOLS/2.6.7.6-foss-2018a 
module load Armadillo/8.400.0-foss-2018a

DIR=/gpfs/loomis/home.grace/$USER/geocomputation/Landsat

file=$(ls $DIR/stack_??.vrt  | head  -n  $SLURM_ARRAY_TASK_ID | tail  -1 )

filename=$(basename $file .vrt)
pkfilter -of GTiff  -dx 3 -dy 3  -f mean -co COMPRESS=DEFLATE -co ZLEVEL=9 -i $file -o  $DIR/$filename.tif 
";i:1;s:5:"bash|";i:2;s:29:"sc02d_filter_tif_arrayjobs.sh";}i:2;i:10227;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11280;}i:68;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:11280;}}