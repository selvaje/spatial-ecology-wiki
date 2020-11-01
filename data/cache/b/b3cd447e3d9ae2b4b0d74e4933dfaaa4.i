a:81:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"GRASS in the YALE-HPC";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:37;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:64:"Start GRASS in non-interactively mode in a pre-existing location";i:1;i:2;i:2;i:37;}i:2;i:37;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:37;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:37;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"For this exercise we are going to use the $HOME/ost4sem/grassdb/europe and $HOME/ost4sem/exercise/basic";}i:2;i:115;}i:8;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:218;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:3:"adv";}i:2;i:3;i:3;s:3:"adv";}i:2;i:219;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:222;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"gdalogr/input_proj.tif file if do not have please download ";}i:2;i:223;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:283;}i:13;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:328:"mkdir -p $HOME/ost4sem/grassdb/
cd $HOME/ost4sem/grassdb/
wget https://dl.dropboxusercontent.com/u/29337496/europe.tar.gz
tar xvzf europe.tar.gz
wget https://dl.dropboxusercontent.com/u/29337496/input_proj.tif
mkdir -p  $HOME/ost4sem/exercise/basic_adv_gdalogr/
mv  $HOME/input_proj.tif $HOME/ost4sem/exercise/basic_adv_gdalogr/";}i:2;i:283;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:283;}i:15;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:627;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:136:"
If you are using qsub in a HPC you should run GRASS scripts in a non-interactively from outside of a GRASS session by setting the GRASS";}i:2;i:629;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:765;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:5:"BATCH";}i:2;i:3;i:3;s:5:"BATCH";}i:2;i:766;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:771;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"JOB environment variables.";}i:2;i:772;}i:21;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:798;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:179:"
When GRASS is started with this environment variables set it will automatically run the contents of the script given in the variable, then close the GRASS session when complete. ";}i:2;i:800;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:979;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1420:"

#!/bin/bash

GISDBASE=$(dirname $(dirname  $1))
LOCATION_NAME=$(basename $(dirname  $1))
MAPSET=$(basename  $1) 

echo Enter in GRASS using GISDBASE = $GISDBASE, LOCATION = $LOCATION_NAME, MAPSET = $MAPSET  

echo "GISDBASE: $GISDBASE"                 > $HOME/.grass7/grass$$
echo "LOCATION_NAME: $LOCATION_NAME"      >> $HOME/.grass7/grass$$
echo "MAPSET: $MAPSET"                    >> $HOME/.grass7/grass$$
echo "GRASS_GUI: text"                    >> $HOME/.grass7/grass$$

# path to GRASS settings file
export GISRC=$HOME/.grass7/grass$$
export GRASS_PYTHON=python
export GRASS_MESSAGE_FORMAT=plain
export GRASS_PAGER=cat
export GRASS_WISH=wish
export GRASS_ADDON_BASE=$HOME/.grass7/addons
export GRASS_VERSION=7.0.0beta1
export GISBASE=/usr/local/cluster/hpc/Apps/GRASS/7.0.0beta1/grass-7.0.0beta1
export GRASS_PROJSHARE=/usr/local/cluster/hpc/Libs/PROJ/4.8.0/share/proj/
export PROJ_DIR=/usr/local/cluster/hpc/Libs/PROJ/4.8.0

export PATH="$GISBASE/bin:$GISBASE/scripts:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$GISBASE/lib"
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man
export GIS_LOCK=$$
export GRASS_OVERWRITE=1

echo "########################"
echo Welcome to GRASS 
echo "########################"

g.gisenv  

echo "########################"
echo Start to use GRASS comands
echo "########################"

";i:1;s:5:"bash|";i:2;s:15:"enter_grass.sh ";}i:2;i:986;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2438;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"How to use it";i:1;i:3;i:2;i:2438;}i:2;i:2438;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2438;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2438;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"Download or copy/paste the file in your editor and save as enter_grass.sh.";}i:2;i:2465;}i:30;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2539;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"
Load the script with the command source and specify the mapset.";}i:2;i:2541;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2606;}i:33;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:126:"wget https://dl.dropboxusercontent.com/u/29337496/enter_grass.sh
source enter_grass.sh  $HOME/ost4sem/grassdb/europe/PERMANENT";}i:2;i:2606;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2606;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"You can test if you are GRASS by using a grass command";}i:2;i:2739;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2794;}i:37;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:11:"g.list rast";}i:2;i:2794;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2814;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:59:"Start GRASS in non-interactively mode and create a location";i:1;i:2;i:2;i:2814;}i:2;i:2814;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2814;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2814;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"In case you want create a location on the flight based on a pre-existing georeferenced dataset and keep using grass command for that file you can use this file. ";}i:2;i:2886;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3047;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1769:"


#!/bin/bash

export GISDBASE=$1
export LOCATION=$2
export file=$3

export filename=$(basename  $file .tif)

rm -rf  $GISDBASE/$LOCATION $GISDBASE/loc_tmp

mkdir -p  $GISDBASE/loc_tmp/tmp

echo "LOCATION_NAME: loc_tmp"                                                       > $HOME/.grass7/rc_$filename
echo "GISDBASE: /dev/shm"                                                          >> $HOME/.grass7/rc_$filename
echo "MAPSET: tmp"                                                                 >> $HOME/.grass7/rc_$filename
echo "GRASS_GUI: text"                                                             >> $HOME/.grass7/rc_$filename

# path to GRASS settings file
export GISRC=$HOME/.grass7/rc_$filename
export GRASS_PYTHON=python
export GRASS_MESSAGE_FORMAT=plain
export GRASS_PAGER=cat
export GRASS_WISH=wish
export GRASS_ADDON_BASE=$HOME/.grass7/addons
export GRASS_VERSION=7.0.0beta1
export GISBASE=/usr/local/cluster/hpc/Apps/GRASS/7.0.0beta1/grass-7.0.0beta1
export GRASS_PROJSHARE=/usr/local/cluster/hpc/Libs/PROJ/4.8.0/share/proj/
export PROJ_DIR=/usr/local/cluster/hpc/Libs/PROJ/4.8.0

export PATH="$GISBASE/bin:$GISBASE/scripts:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$GISBASE/lib"
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man
export GIS_LOCK=$$
export GRASS_OVERWRITE=1

rm -rf  $GISDBASE/$LOCATION

echo start importing 
r.in.gdal in=$file   out=$filename  location=$LOCATION

g.mapset mapset=PERMANENT  location=$LOCATION

rm -rf  $GISDBASE/loc_tmp

echo "########################"
echo  Welcome to GRASS
echo "########################"

g.gisenv 

echo "########################"
echo Start to use GRASS comands
echo "########################"

";i:1;s:5:"bash|";i:2;s:19:"create_location.sh ";}i:2;i:3054;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4859;}i:46;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"How to use it";i:1;i:3;i:2;i:4859;}i:2;i:4859;}i:47;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4859;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4859;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"Download or copy/paste the file in your editor and save as create";}i:2;i:4886;}i:50;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:4951;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:12:"location.sh.";}i:2;i:3;i:3;s:12:"location.sh.";}i:2;i:4952;}i:52;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4964;}i:53;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:80:"
Load the script with the command source and specify the grass database location";}i:2;i:3;i:3;s:80:"
Load the script with the command source and specify the grass database location";}i:2;i:4966;}i:54;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:5046;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"name and file to import.";}i:2;i:5047;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5072;}i:57;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:101:"source create_location.sh /dev/shm location $HOME/ost4sem/exercise/basic_adv_gdalogr/input_proj.tif  ";}i:2;i:5072;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5072;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"You can test if you are GRASS by using a grass comand";}i:2;i:5178;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5232;}i:61;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:11:"g.list rast";}i:2;i:5232;}i:62;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5248;}i:63;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:56:"Start GRASS in non-interactively and perform an analysis";i:1;i:2;i:2;i:5248;}i:2;i:5248;}i:64;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:5248;}i:65;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:194:"

wget https://dl.dropboxusercontent.com/u/29337496/create_location.sh
source create_location.sh /dev/shm location $HOME/ost4sem/exercise/basic_adv_gdalogr/input_proj.tif  
r.report input_proj

";i:1;s:5:"bash|";i:2;s:21:"my_grass_analysis.sh ";}i:2;i:5323;}i:66;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5555;}i:67;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"How to use it";i:1;i:3;i:2;i:5555;}i:2;i:5555;}i:68;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5555;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5555;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Copy/Paste the file in your editor and save as my";}i:2;i:5581;}i:71;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:5630;}i:72;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:5:"grass";}i:2;i:3;i:3;s:5:"grass";}i:2;i:5631;}i:73;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:5636;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"analysis.sh.";}i:2;i:5637;}i:75;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5649;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:5651;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5652;}i:78;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:25:"bash my_grass_analysis.sh";}i:2;i:5652;}i:79;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5681;}i:80;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5681;}}