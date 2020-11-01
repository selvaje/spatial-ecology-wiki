a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Headline";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:886:"
# preparing raster data for later modelling...


# make environmental date equal resolution an extent based on a shapefile
for file in /home/user/LVM_share/styria/ras/*.asc; do filename=$(basename $file)
gdalwarp -tr 10 10 -r bilinear -cutline ~/LVM_share/styria/vec/stmk.shp -crop_to_cutline -co COMPRESS=DEFLATE -co ZLEVEL=9 -overwrite $file /home/user/LVM_share/styria/output/crop_$filename.tif 
done

# write a list of files in the output directory
ls ~/LVM_share/styria/output > ~/LVM_share/styria/filenames.txt

# creates a vrt to stack rasters
gdalbuildvrt -separate -input_file_list /home/user/LVM_share/styria/output/filenames.txt /home/user/LVM_share/styria/output/inraster.vrt

# extract raster values to a point shapefile
pkextract -i ~/LVM_share/styria/output/inraster.vrt -s ~/LVM_share/styria/vec/campull.shp -f "ESRI Shapefile" -o ~/LVM_share/styria/vec/extracted.shp

";i:1;s:4:"bash";i:2;N;}i:2;i:29;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:928;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:928;}}