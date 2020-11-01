a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Point cloud data interpolation";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:4055:"
#!/bin/bash

USAGE="$0 [DIM|INPUT_DATA.csv]"

# Crafts a sample cloud of randomly distributed $DIM^2 points
# inside a fixed geographic area, then rasterize it using gdal_grid.
# 
# author: Piero Campalani

#
# aux functions
#
function random {
    min=$1
    max=$2
    echo $(( $min + $RANDOM * $max / 32767 ))
}	

#
# prepare input
#
if [ $# -ne 1 ]; then
    echo $USAGE
    exit 1
fi

CSV='/dev/shm/test_cloud.csv'
if [ -f $1 ]; then
    CSV="$1"
    # derive BBOX (assume lon lat are cols 1:2
    echo -n "Deriving BBOX of input data..."
    mLon=$( awk 'BEGIN{ min=999999999 } { if (NR>1) {if ($1<min) min=$1 }} END {print min }'  $CSV )
    mLat=$( awk 'BEGIN{ min=999999999 } { if (NR>1) {if ($2<min) min=$2 }} END {print min }'  $CSV )
    MLon=$( awk '{ if (NR>1) {if ($1>max) max=$1 }} END {print max }'  $CSV )
    MLat=$( awk '{ if (NR>1) {if ($2>max) max=$2 }} END {print max }'  $CSV )
    BBOX=( $mLon $mLat $MLon $MLat )
    echo "Done: (${BBOX[@]})"
else
    BBOX=( 30000 4500000 32000 4501000 ) # xmin ymin xmax ymax
    DIM=$1
    NUM_REGEX='^[0-9]+$'
    if ! [[ $DIM =~ $NUM_REGEX ]]; then
       echo "$DIM: Not a number"
       echo $USAGE
       exit 2
    fi

    # header (discards previous test file)
    echo "lon lat md" > $CSV

    #
    # craft the input cloud
    #
    dLat=$(( (${BBOX[3]} - ${BBOX[1]}) / ($DIM + 1) ))
    dLon=$(( (${BBOX[2]} - ${BBOX[0]}) / ($DIM + 1) ))
    lat0=$(( ${BBOX[1]} + $dLat )) 
    lon0=$(( ${BBOX[0]} + $dLon ))
    #echo DEBUG $dLat / $dLon
    #echo random 0 $(( $dLat / 2 )) = $( random 0 $(( $dLat / 2 )) )
    #echo random 0 $(( $dLon / 2 )) = $( random 0 $(( $dLon / 2 )) )
    echo -n "Populating ${DIM}x${DIM} point-cloud inside BBOX(${BBOX[@]}) to $CSV..."
    lat=$lat0
    lon=$lon0
    for i in $( seq 1 $DIM ); do
	for j in $( seq 1 $DIM ); do
	    md=$( random 0 100 )
	    devLat=$(( $lat + $( random 0 $(( $dLat / 2 )) ) ))
	    devLon=$(( $lon + $( random 0 $(( $dLon / 2 )) ) ))
	    echo "$devLon $devLat $md" >> $CSV
	    lat=$(( $lat + $dLat ))
	done
	lat=$lat0
        lon=$(( $lon + $dLon ))
	echo -n "."
    done
    echo "Done."
fi

#
# interpolate using gdal_grid
#
LAYER="$( basename $CSV .csv)"
OUT_TIF="gridded_$( basename $CSV .csv ).tif"
IN_VRT="$( dirname $CSV )/$( basename $CSV .csv ).vrt"
IN_GML="$( dirname $CSV )/$( basename $CSV .csv ).gml"
ogr2ogr -f GML $IN_GML $CSV
echo "<OGRVRTDataSource>" > $IN_VRT                                               
echo "    <OGRVRTLayer name=\"$LAYER\">" >> $IN_VRT
echo "        <SrcDataSource>$CSV</SrcDataSource>" >> $IN_VRT 
echo "        <GeometryType>wkbPoint</GeometryType>" >> $IN_VRT
echo "        <GeometryField encoding=\"PointFromColumns\" x=\"lon\" y=\"lat\" z=\"md\"/> " >> $IN_VRT
echo "    </OGRVRTLayer>" >> $IN_VRT
echo "</OGRVRTDataSource>" >> $IN_VRT

echo -n "Interpolating points in $CSV to $OUT_TIF..."
r=$(( (${BBOX[2]} - ${BBOX[0]}) / 4 ))
echo "gdal_grid -a invdistnn:power=2:radius=$r:max_points=100 -outsize 500 500 -of EHdr -ot Float32 -l $LAYER $IN_VRT $OUT_TIF"
gdal_grid -a invdistnn:power=2:radius=$r:max_points=100 \
    -outsize 500 500\
    -of EHdr -ot Float32 -l $LAYER\
    $IN_VRT $OUT_TIF
echo "Done."

#
# plot the result
#
gnuplot --persist <<EOF
set bar 1.000000 front
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
unset logscale
set title "MD gradient from ${DIM}x${DIM} points demo" 
set xlabel "Easting [m]" 
set xlabel  offset character -3, -2, 0 font "" textcolor lt -1 norotate
set xrange [ ${BBOX[0]} : ${BBOX[2]} ] noreverse nowriteback
set ylabel "Northing [m]" 
set ylabel  offset character 3, -2, 0 font "" textcolor lt -1 rotate by -270
set yrange [ ${BBOX[1]} : ${BBOX[3]} ] noreverse nowriteback
set zlabel "MD level [%]" 
set zlabel  offset character -5, 0, 0 font "" textcolor lt -1 norotate
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front
## Last datafile plotted: "$grid"
splot '$CSV' u 1:2:3 with points
EOF

echo
echo "Bye..."

";i:1;s:4:"bash";i:2;N;}i:2;i:51;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4119;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4119;}}