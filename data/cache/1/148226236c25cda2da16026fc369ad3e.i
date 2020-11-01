a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Vector manipulation with OGR";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:43;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"ogrinfo programme";i:1;i:5;i:2;i:43;}i:2;i:43;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:43;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:148:"ogrinfo -al    poly_fr_10poly.sh
ogrinfo -al -geom=NO    poly_fr_10poly.shp

# select a field 

ogrinfo -al -geom=NO    poly_fr_10poly.shp | grep id";}i:2;i:66;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:229;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Look at a different file";i:1;i:5;i:2;i:229;}i:2;i:229;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:229;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:124:"
cd ~/ost4sem/exercise/KenyaGIS

ogrinfo -al County.shp
ogrinfo -al County.shp | head -30
ogrinfo -al County.shp | head -41
";i:1;s:4:"bash";i:2;N;}i:2;i:266;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:405;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Process vector file with ogr2ogr and ogrinfo";i:1;i:5;i:2;i:405;}i:2;i:405;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:405;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:477:"
INPUT=~/ost4sem/exercise/KenyaGIS

ogr2ogr  -f "GML" -s_srs EPSG:4326  -t_srs EPSG:3857 -select COUNTY  -where "COUNTY = 'Isiolo'"  /tmp/Isiolo.gml  $INPUT/County.shp

# Extract bounding box for different county and overall county in Kenya
ogrinfo -al County.shp | grep "Extent" | awk '{gsub(/\(/,"");gsub(/\)/,"");gsub(/,/,"");print $2" "$3" "$5" "$6} '
ogrinfo -al /tmp/Isiolo.gml | grep "Extent" | awk '{gsub(/\(/,"");gsub(/\)/,"");gsub(/,/,"");print $2" "$3" "$5" "$6} '

";i:1;s:4:"bash";i:2;N;}i:2;i:462;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:953;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:953;}}