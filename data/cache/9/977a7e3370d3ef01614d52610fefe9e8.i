a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"Biotope Mapping from Orthophoto";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:141:"Some steps to produce a grayscale product, an NDVI product. Then how to stack bands together to finally perform segmentation on Orfeotoolbox.";}i:2;i:48;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:189;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1451:"

#!/bin/bash
#Set up the directory
DIR=~/ost4sem/Selection_Stockholm/Raw
cd $DIR

#Let's do a subset of an ortho-photo
gdal_translate  -srcwin 0 0 1000 1000 -co ZLEVEL=9 -co COMPRESS=DEFLATE   $DIR/ortoIr025_3006_6564469_648766.tif  $DIR/ortoIr025_3006_6564469_648766_subset.tif

#Grayscale production
gdal_calc.py -A $DIR/ortoIr025_3006_6564469_648766_subset.tif \\
--A_band=1 -B $DIR/ortoIr025_3006_6564469_648766_subset.tif  \\
--B_band=2 -C $DIR/ortoIr025_3006_6564469_648766_subset.tif \\
--C_band=3   --outfile=$DIR/ortoIr025_3006_6564469_648766_grayscale.tif \\
--calc="(A.astype(float)+B.astype(float)+C.astype(float))/3"  \\
--co=ZLEVEL=9 --co=COMPRESS=DEFLATE   --overwrite --type=Float32

#This is for NDVI
gdal_calc.py -A $DIR/ortoIr025_3006_6564469_648766_subset.tif --A_band=2 -B $DIR/ortoIr025_3006_6564469_648766_subset.tif --B_band=1 --outfile=$DIR/ortoIr025_3006_6564469_648766_ndvi.tif --calc="((B.astype(float)-A.astype(float))/(B.astype(float)+A.astype(float)+0.00000001))" --co=ZLEVEL=9 --co=COMPRESS=DEFLATE --overwrite --type=Float32

#Stack the bands into a vrt
gdalbuildvrt -separate -overwrite $DIR/ortoIr025_3006_6564469_648766_compo.vrt $DIR/ortoIr025_3006_6564469_648766_subset.tif $DIR/ortoIr025_3006_6564469_648766_ndvi.tif

#Produce a segmentation
otbcli_Segmentation -in $DIR/ortoIr025_3006_6564469_648766_compo.vrt -mode vector -mode.vector.out SegmentationVector.shp  -filter meanshift -mode.vector.tilesize 2667

";i:1;s:4:"bash";i:2;N;}i:2;i:196;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1664;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1664;}}