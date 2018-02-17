a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"BigGeoData DEM Mosaic";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:948:"
#!/bin/bash

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#% Mosaic tiles from ASTER dataset  %
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#####################################
# set up GRASS enviroment variables
#####################################

export GISBASE=/usr/lib/grass70
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$GISBASE/lib"
export GISRC=$HOME/.grass7/rc$$
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man
export GIS_LOCK=$$


##############
# unzip files
##############
for z in *zip ; do
   # unzip files
   unzip -oq  $z 
done

##########################
# import files into GRASS
##########################

# start up grass
grass -text

# list of files
demf=$(ls *.tif| grep dem)

# read files into GRASS
for y in $demf ;do
   echo "import $y  file..."
   # import file into grass
   r.in.gdal in=$y out=$y --o -o
done

";i:1;s:4:"bash";i:2;N;}i:2;i:43;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1004;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1004;}}