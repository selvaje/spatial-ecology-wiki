a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"Modify a dem in specific point locations";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:793:"

INDIR=/media/sf_LVM_Share/LVM_Share/Antonio_DEMproj

# Reproject point data
ogr2ogr -t_srs epsg:3003 $INDIR/point_bridge3003.shp $INDIR/point_bridge.shp

# Rasterize point to grid. All no data value have 0.0 dimension even though in the metadata are recognized as No Data 
gdal_rasterize -burn 6.0 -a_nodata 0.0 -l point_bridge3003 -te 1435249.208 4876253.606 1438132.071 4878681.806 -tr 4.996296019418000 4.996296019418000 -ot Float32 $INDIR/point_bridge3003.shp $INDIR/Bridge3003.tif

# Redefine metadate so no data are coded as 9999. In this map there are no noData
gdal_edit.py -a_nodata -9999 $INDIR/Bridge3003.tif

# Sum DEM and Bridge elevation pixels
gdal_calc.py -A $INDIR/Bridge3003.tif -B TERRENO.asc --type='Float32' --outfile=$INDIR/ModifyDEM.tif --calc="(A + B)" --overwrite 

";i:1;s:4:"bash";i:2;N;}i:2;i:62;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:869;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:869;}}