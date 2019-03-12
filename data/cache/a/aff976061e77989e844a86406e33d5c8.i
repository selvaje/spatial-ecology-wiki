a:15:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Project environment settings";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"The following script can be adapted to start a project and define a working directory
Run this script using mapset name";}i:2;i:45;}i:5;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:164;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:167;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:173;}i:8;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:370:"
### title
### authors
#### this script is going to perform.... 

INDIR=~/ost4sem/project/input   # setting the input file directory 
OUTDIR=~/ost4sem/project/output # setting the output file directory 

mkdir $INDIR
mkdir $OUTDIR

## add the variables

cd $INDIR
echo the input file directory is : $INDIR/input.txt
echo the output file directory is : $INDIR/output.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:173;}i:9;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:561;}i:10;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"Environment settings for a grass standalone routine";i:1;i:1;i:2;i:561;}i:2;i:561;}i:11;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:561;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:928:"
### title
### authors
#### this script is going to perform.... 

export INDIR=~/ost4sem/project/input   # setting the input file directory 
export OUTDIR=~/ost4sem/project/output # setting the output file directory 

## add the variables

cd $INDIR

export GRASSDB=~/ost4sem/grassdb 
export LOCATION=locaton_name 
export MAPSET=PERMNENT
export RES=$1  # if needed    

echo "LOCATION_NAME: $LOCATION"    >  $HOME/.grassrc6_$$
echo "MAPSET: $MAPSET"             >> $HOME/.grassrc6_$$
echo "DIGITIZER: none"             >> $HOME/.grassrc6_$$
echo "GRASS_GUI: text"             >> $HOME/.grassrc6_$$
echo "GISDBASE: $GRASSDB"          >> $HOME/.grassrc6_$$

#   path to GRASS binaries and libraries:
export GISBASE=/usr/lib/grass64
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$GISBASE/lib"
export GISRC=~/.grassrc6_$$
export GIS_LOCK=$$  #   use process ID (PID) as lock file number

g.gisenv

       
";i:1;s:4:"bash";i:2;N;}i:2;i:632;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1574;}i:14;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1574;}}