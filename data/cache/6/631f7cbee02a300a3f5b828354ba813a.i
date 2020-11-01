a:41:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"HPC geographical data using GRASS";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:314:"We created for GRASS a similar data processing scheme we used from the previous exercise ( HPC gdal data processing). Now the submitter script stay the same while the template GRASS script has a set of variable and GRASS environment settings and variable exports needed for accessing GRASS functions from each CPU.";}i:2;i:49;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:363;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:365;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:367;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"The submitter script";i:1;i:2;i:2;i:367;}i:2;i:367;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:367;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:367;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"This is needed for splitting data processing in multiple CPU.";}i:2;i:400;}i:12;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:461;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:463;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:149:"
#!/bin/bash
SCRIPTDIR=~/ost4sem/experiment/scripts
for file in  ~/usbstore1/input/20*.tif ; do
qsub -v file=$file $SCRIPTDIR/Grass_template.sh
done
";i:1;s:4:"bash";i:2;s:20:"| Grass_submitter.sh";}i:2;i:470;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:655;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"The data processing template script";i:1;i:2;i:2;i:655;}i:2;i:655;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:655;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:655;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:"This is the chore script which is used for defining the actual data processing tasks.";}i:2;i:703;}i:20;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:788;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:790;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1728:"
#$ -S /bin/bash
#$ -o /home/pi/ost4sem/experiment/stdout
#$ -e /home/pi/ost4sem/experiment/stderr

export INPUTDIR=/home/pi/usbstore1/input
export OUTPUTDIR=/home/pi/usbstore2/output
export FILENAME=$(basename $file .tif)
export GRASSDB=/home/pi/ost4sem/grassdb
export LOCATION=location3035
export MAPSET=mapset_$FILENAME

################################  Setting GRASS variables for GRASS bash job
echo "LOCATION_NAME: $LOCATION"           >  $HOME/.grassrc6_$$
echo "MAPSET: PERMANENT"                  >> $HOME/.grassrc6_$$
echo "DIGITIZER: none"                    >> $HOME/.grassrc6_$$
echo "GRASS_GUI: text"                    >> $HOME/.grassrc6_$$
echo "GISDBASE: $GRASSDB"                 >> $HOME/.grassrc6_$$
###############################  path to GRASS binaries and libraries:
export GISBASE=/usr/lib/grass64
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$GISBASE/lib"
export GISRC=~/.grassrc6_$$
export GIS_LOCK=$$  #   use process ID (PID) as lock file number
##############################   Start processing using grass

# gdalinfo $file > $OUTPUTDIR/$(basename $file .tif).txt
# gdalwarp -cutline $INPUTDIR/poly_fr.shp -crop_to_cutline $file $OUTPUTDIR/$CROPFILE
# gdalinfo $OUTPUTDIR/$CROPFILE > $OUTPUTDIR/$(basename $CROPFILE .tif).txt

g.mapset -c mapset=$MAPSET
r.external input=$file output=virtual_grass_map --overwrite
gdalinfo $file > $OUTPUTDIR/$FILENAME"before.txt"
g.region res=10000
r.mapcalc resampled=virtual_grass_map
r.out.gdal    input=resampled  format=GTiff output=$OUTPUTDIR/"test_GRASS_"$FILENAME.tif
gdalinfo  $OUTPUTDIR/"test_GRASS_"$FILENAME.tif > $OUTPUTDIR/$FILENAME"after.txt"
g.mapset mapset=PERMANENT
rm -r $GRASSDB/$LOCATION/$MAPSET

";i:1;s:4:"bash";i:2;s:19:"| Grass_template.sh";}i:2;i:797;}i:23;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:7:"notetip";}i:2;i:1;i:3;s:10:"<note tip>";}i:2;i:2563;}i:24;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:15:"In between the ";}i:2;i:3;i:3;s:15:"In between the ";}i:2;i:2574;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:2589;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:10:"r.external";}i:2;i:3;i:3;s:10:"r.external";}i:2;i:2591;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:2601;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:9:" and the ";}i:2;i:3;i:3;s:9:" and the ";}i:2;i:2603;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:2612;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:10:"r.out gdal";}i:2;i:3;i:3;s:10:"r.out gdal";}i:2;i:2614;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:2624;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:69:" functions we could add a long procedure of data procesing routines. ";}i:2;i:3;i:3;s:69:" functions we could add a long procedure of data procesing routines. ";}i:2;i:2626;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2695;}i:34;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:2696;}i:35;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:13:"noteimportant";}i:2;i:1;i:3;s:16:"<note important>";}i:2;i:2705;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:87:"The amount of data process we need to perform here is our processing chain bottle neck.";}i:2;i:3;i:3;s:87:"The amount of data process we need to perform here is our processing chain bottle neck.";}i:2;i:2722;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2809;}i:38;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:2810;}i:39;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2817;}i:40;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2817;}}