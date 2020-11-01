a:35:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Segmenting the Global Human Settlement Layer";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:47:":wiki:python:screenshot_2018-06-02_07-03-31.png";i:1;s:1:" ";i:2;s:6:"center";i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:61;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:120;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:122;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"Download the file and setting up working directory";i:1;i:5;i:2;i:122;}i:2;i:122;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:122;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:149:"
mkdir $HOME/GHSLseg
cd $HOME/GHSLseg
wget http://www.spatial-ecology.net/ost4sem/exercise/GHSLseg/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0.tif

";i:1;s:4:"bash";i:2;N;}i:2;i:186;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:351;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:48:"Thresholding the GHSL and clumping each bin-unit";i:1;i:5;i:2;i:351;}i:2;i:351;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:351;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2935:"


export DIR=$HOME/GHSLseg

oft-calc -ot Byte $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0.tif $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin.tif <<EOF
1
#1 0.05 + 10 * 1 -
EOF
rm  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin.tif.eq

# colored  the bin file 
pkcreatect -min 0 -max 9 > /tmp/color.txt 
pkcreatect   -co COMPRESS=DEFLATE -co ZLEVEL=9  -ct  /tmp/color.txt  -i   $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin.tif -o   ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_ct.tif
gdal_edit.py -a_nodata -1   ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_ct.tif
mv ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_ct.tif ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin.tif

echo start the clump operation 

rm -fr ${DIR}/grassdb
mkdir ${DIR}/grassdb

echo  1 2 3 4 5 6 7 8 9   | xargs -n 1 -P 2 bash -c $' 

MIN=$( echo $1 - 0.5 | bc )
BIN=$1

echo masking the bin 

pkgetmask  -co COMPRESS=DEFLATE -co ZLEVEL=9  -min $MIN  -max 9.5  -data 1 -nodata 0 -ct  /tmp/color.txt  -i ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin.tif -o ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN.tif 
gdal_edit.py -a_nodata 0   ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN.tif  

# create the new location and exit

rm -fr  ${DIR}/grassdb/loc_clump$BIN

grass72 -e -text  -c  ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN.tif ${DIR}/grassdb/loc_clump$BIN 

# set up grass variables
 
echo "GISDBASE: ${DIR}/grassdb"                  >  $HOME/.grass7/rc$$
echo "LOCATION_NAME: loc_clump$BIN"              >> $HOME/.grass7/rc$$
echo "MAPSET: PERMANENT"                         >> $HOME/.grass7/rc$$
echo "GUI: text"                                 >> $HOME/.grass7/rc$$
echo "GRASS_GUI: wxpython"                       >> $HOME/.grass7/rc$$

export GISBASE=/usr/lib/grass72
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$GISBASE/lib"
export GISRC=$HOME/.grass7/rc$$
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man

export GIS_LOCK=$$

g.gisenv 
r.in.gdal input=${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN.tif output=GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN  --o

r.clump -d  --overwrite    input=GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN     output=GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump
r.colors -r map=GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$BIN

r.out.gdal -m  nodata=0 --overwrite -f -c createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff type=UInt32  input=GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump  output=${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.tif 
rm -rf ${DIR}/grassdb/loc_clump$BIN  ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.tif.aux.xml 

' _  

rm -fr ${DIR}/grassdb

";i:1;s:5:"bash|";i:2;s:17:"sc01_bin_clump.sh";}i:2;i:412;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:412;}i:15;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:20:":wiki:python:bin.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3381;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3412;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3414;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:73:"Re-class the bin-unit to have consecutive ID values among the all levels.";i:1;i:5;i:2;i:3414;}i:2;i:3414;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:3414;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1945:"

# re-class the bin clump and then overlay 
export DIR=$HOME/GHSLseg

# will add to 1 ... so the overall will start from 1 

lastmaxb=0   

for BIN in 1 2 3 4 5 6 7 8 9 ; do 

echo hist for BIN $BIN
pkstat -hist -i ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.tif | grep -v " 0" | awk -v lastmaxb=$lastmaxb '{ if ($1==0) { print $1,0} else {lastmaxb=1+lastmaxb; print $1,lastmaxb}}' > $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.txt

lastmaxb=$(tail -1 $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.txt | awk '{ print $2 }')

echo reclass for BIN $BIN
pkreclass -ot UInt32 -code $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.txt  -co COMPRESS=DEFLATE -co ZLEVEL=9 -i ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.tif -o ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.tif

gdal_edit.py -a_nodata 0 ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.tif
rm $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${BIN}_clump.txt
done 

# combine all the bin clump and get the highst value 

gdalbuildvrt -separate -overwrite ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump.vrt ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin?_clump.tif

oft-calc -of GTiff -ot UInt32 ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump.vrt ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump_tmp.tif <<EOF
1
#1 #2 #3 #4 #5 #6 #7 #8 #9 M M M M M M M M
EOF
gdal_translate -a_nodata 0 -ot UInt32 -co COMPRESS=DEFLATE -co ZLEVEL=9 ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump_tmp.tif ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin1-9_clump.tif

rm ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump_tmp.tif ${DIR}/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump.vrt $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_clump_tmp.tif.eq

";i:1;s:5:"bash|";i:2;s:25:"sc02_bin_clump_reclass.sh";}i:2;i:3501;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5488;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Identify the peaks";i:1;i:5;i:2;i:5488;}i:2;i:5488;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:5488;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3333:"

export DIR=$HOME/GHSLseg

pkcreatect -min 0 -max 1 > /tmp/color.txt 
pkcreatect -co COMPRESS=DEFLATE -co ZLEVEL=9 -ot Byte -nodata -1 -min 0 -max 1 -i $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin9.tif -o  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin9_clean.tif
gdal_edit.py -a_nodata -1  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin9_clean.tif

# change the nodata to -1 to allow the gdacalc to consider 
echo  0 1 2 3 4 5 6 7 8 9 | xargs -n 1 -P 8 bash -c $'
gdal_edit.py -a_nodata -1  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin$1.tif
' _

echo 2 3 4 5 6 7 8 9 | xargs -n 1 -P 2 bash -c $'

    bin1=$1
    bin2=$(bc <<< "$bin1-1")
    echo $bin1
        rm -f $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin1}+${bin2}.tif 
        gdal_calc.py --calc="A+B" --co="COMPRESS=LZW" --overwrite --NoDataValue=-1 \
            -A $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin1}.tif \
            -B $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin2}.tif \
            --outfile=$DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin1}+${bin2}.tif

        oft-stat -mm --noavg --nostd \
            -i  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin1}+${bin2}.tif \
            -um $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin2}_clump.tif \
            -o  $DIR/zonal_stats_${bin2}.txt

        awk \'{if($4==1) { print $1,1 }  else { print $1,0 }}\' $DIR/zonal_stats_${bin2}.txt > $DIR/code_${bin2}.txt

        pkreclass -co COMPRESS=DEFLATE -co ZLEVEL=9  -ot Byte -nodata -1 -ct /tmp/color.txt \
            -i $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin2}_clump.tif \
            -o $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin2}_clean.tif \
            --code $DIR/code_${bin2}.txt

        rm -f $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin${bin1}+${bin2}.tif
        rm -f $DIR/zonal_stats_${bin2}.txt
        rm -f $DIR/code_${bin2}.txt

' _

#  only search for peaks with bin values larger or equal to 2 
  
gdalbuildvrt -overwrite  -separate $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.vrt $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin{2,3,4,5,6,7,8,9}_clean.tif

oft-calc -ot Byte $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.vrt $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak_tmp.tif << EOF
1
#1 #2 #3 #4 #5 #6 #7 #8 + + + + + + +
EOF

gdal_translate   -co COMPRESS=DEFLATE -co ZLEVEL=9  -ot Byte   $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak_tmp.tif $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.tif
# rm  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak_tmp.tif $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.vrt $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak_tmp.tif.eq 

pksetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 -m $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.tif  -msknodata 0 -nodata 0 -i $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin.tif  -o $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin_peak.tif

pksetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 -m $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.tif  -msknodata 0 -nodata 0 -i $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_bin1-9_clump.tif  -o $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak_clump.tif 

";i:1;s:5:"bash|";i:2;s:22:"sc03_bin_peak_clump.sh";}i:2;i:5519;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8892;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Built up cost function using the GHSL and peaks";i:1;i:5;i:2;i:8892;}i:2;i:8892;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:8892;}i:28;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1622:"


DIR=/home/selv/spatial-ecology-codes/wiki/watershedsegment

rm -f $DIR/grassdb ; mkdir $DIR/grassdb

gdal_edit.py -a_nodata 0  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.tif
grass72 -e -text  -c  $DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.tif   $DIR/grassdb/loc_cost

# set up grass variables
 
echo "GISDBASE: ${DIR}/grassdb"         >  $HOME/.grass7/rc$$
echo "LOCATION_NAME: loc_cost"          >> $HOME/.grass7/rc$$
echo "MAPSET: PERMANENT"                >> $HOME/.grass7/rc$$
echo "GUI: text"                        >> $HOME/.grass7/rc$$
echo "GRASS_GUI: wxpython"              >> $HOME/.grass7/rc$$

export GISBASE=/usr/lib/grass72
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$GISBASE/lib"
export GISRC=$HOME/.grass7/rc$$
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man

export GIS_LOCK=$$

g.gisenv 

r.in.gdal input=$DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peak.tif output=peak  --o
r.in.gdal input=$DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0.tif      output=builtup    --overwrite   memory=2047 

# complementary builtup
r.mapcalc " builtup_comp =  ( 1 - builtup )   "  --overwrite

echo start to calculate the cost

r.cost  -k input=builtup_comp output=builtup_cost start_raster=peak null_cost=-1 --overwrite 
r.colors  -r map=builtup_comp

r.out.gdal --overwrite nodata=-1 -c -f createopt="COMPRESS=DEFLATE,ZLEVEL=9" type=Float32 format=GTiff  input=builtup_cost  output=$DIR/GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_cost.tif

rm -rf $DIR/grassdb

";i:1;s:5:"bash|";i:2;s:21:"sc04_built-up_cost.sh";}i:2;i:8953;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10613;}i:30;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Segmentation analyse";i:1;i:5;i:2;i:10613;}i:2;i:10613;}i:31;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:10613;}i:32;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1460:"

# python -m pip install SimpleITK
# itk installation  https://itk.org/Wiki/SimpleITK/GettingStarted/Visual_guide_to_building_on_Linux#Step_4:_Build_SimpleITK 

export DIR=$HOME/GHSLseg
rm -f  $DIR/watershed_line_nogeo.tif  $DIR/watershed_poly_nogeo.tif  

# export PATH="/home/selv/anaconda3/bin:$PATH"

cd $DIR
python <<EOF
import os

import SimpleITK as sitk
print("importing image")
img  = sitk.ReadImage("GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_cost.tif" , sitk.sitkFloat32  )  

# to check img.GetPixelIDTypeAsString() 32-bit unsigned integer  
peak = sitk.ReadImage("GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_peaka.tif")

marker_img  = sitk.ConnectedComponent(peak)

print("start watershed")
ws_line  = sitk.MorphologicalWatershedFromMarkers( img, marker_img , markWatershedLine=True,  fullyConnected=True)
sitk.WriteImage( sitk.Cast( ws_line  ,  sitk.sitkFloat32  ),        "watershed_line_nogeo.tif" )
del(ws_line)

ws_poly  = sitk.MorphologicalWatershedFromMarkers( img, marker_img , markWatershedLine=False, fullyConnected=True)
sitk.WriteImage( sitk.Cast( ws_poly  ,  sitk.sitkFloat32  ),        "watershed_poly_nogeo.tif" )
del(ws_poly)
EOF

gdal_edit.py  -a_srs EPSG:4326  -a_ullr $(getCorners4Gtranslate GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_cost.tif  ) watershed_line_nogeo.tif 
gdal_edit.py  -a_srs EPSG:4326  -a_ullr $(getCorners4Gtranslate GHS_BUILT_LDS2014_GLOBE_R2016A_54009_1k_v1_0_cost.tif  ) watershed_poly_nogeo.tif  

";i:1;s:5:"bash|";i:2;s:17:"sc05_watershed.sh";}i:2;i:10649;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:12143;}i:34;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:12143;}}