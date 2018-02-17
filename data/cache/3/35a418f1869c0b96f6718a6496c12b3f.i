a:7:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:62:"Download MODIS Land Surface Temperature (*.hdf) from Nasa ftp.";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:972:"

mkdir  $HOME/LST
cd  $HOME/LST

# Create a list of DAY and save to a file  
  
echo "001 009" > List_day.txt

# echo "001 009 017 025 033 041 049 057 065 073 081 089 097 105 113 121 129 137 145 153 161 169 177 185 193 201 209 217 225 233 241 249 257 265 273 281 289 297 305 313 321 329 337 345 353 361" > List_day.txt

  
# Download  
for DAY in $(cat List_day.txt )  ; do
    mkdir $DAY
    cd $DAY 
    wget  --waitretry=4 --random-wait  -c -w 5 --no-remove-listing -A .hdf ftp://ladsweb.nascom.nasa.gov/allData/6/MOD11A2/2008/${DAY}/*.hdf
done
  
# aggregate the hdf in a single global file using gdal
  
for DAY in $(cat List_day.txt )  ; do
    cd $DAY 
    for file in *.hdf ; do 
        filename=$(basename $file .hdf)
        gdalbuildvrt  ${filename}.vrt HDF4_EOS:EOS_GRID:"${file}":MODIS_Grid_8Day_1km_LST:LST_Day_1km
    done 
    gdalbuildvrt ${DAY}_LST.vrt *.vrt
    gdal_translate -co ZLEVEL=9  -co COMPRESS=DEFLATE  ${DAY}_LST.vrt  ${DAY}_LST.tif
done  
";i:1;s:5:"bash|";i:2;s:13:"LST_mosaic.sh";}i:2;i:84;}i:4;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:816:"

for DAY in $(cat List_day.txt )  ; do
    cd $DAY 
    for file in *.hdf ; do 
        filename=$(basename $file .hdf)
        gdalbuildvrt  ${filename}_LST.vrt HDF4_EOS:EOS_GRID:"${filename}":MODIS_Grid_8Day_1km_LST:LST_Day_1km
        gdalbuildvrt  ${filename}_QC.vrt  HDF4_EOS:EOS_GRID:"${filename}":MODIS_Grid_8Day_1km_LST:QC_Day
    done 
    gdalbuildvrt ${DAY}_LST_QC.vrt *.vrt
    # gdal_translate -co ZLEVEL=9  -co COMPRESS=DEFLATE  ${DAY}_LST_QC.vrt  ${DAY}_LST_QC.tif
    
    pkcomposite $(ls $RAMDIR/${SENS}11A2.A*${DAY}_tile${tile}_$DN.tif | xargs -n 1 echo -i )  -file 1  -ot Float32   -co  COMPRESS=LZW -co ZLEVEL=9  -cr 
mean -dstnodata 0  -bndnodata 1 -srcnodata 2 -srcnodata 3  -srcnodata  193 -srcnodata 209 -srcnodata 225       -o $RAMDIR/LST_${SENS}_QC_day${DAY}_tile
${tile}_$DN.tif
done  

";i:1;s:5:"bash|";i:2;s:13:"LST_mosaic.sh";}i:2;i:1092;}i:5;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1939;}i:6;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1939;}}