a:72:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:72:"Exercise 3b: Study phenology from MODIS NDVI time series (forest vector)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"In this exercise the following tools will be used:";}i:2;i:88;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:138;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:138;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:138;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:138;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" pktools: pkextract, pkstatogr";}i:2;i:142;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:172;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:172;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:172;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:172;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" bash: for loop, redirection (> and ";}i:2;i:176;}i:15;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:">>";}i:2;i:212;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:")";}i:2;i:214;}i:17;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:215;}i:18;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:215;}i:19;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:215;}i:20;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:215;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" gdal/ogr tools: ogr2ogr";}i:2;i:219;}i:22;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:243;}i:23;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:243;}i:24;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:243;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:243;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"If not performed yet in ";}i:2;i:245;}i:27;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:15:"wiki:exercise2b";i:1;s:48:"Exercise 2b: Phenology of forest and golf course";}i:2;i:269;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:337;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:337;}i:30;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:339;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"Extract golf courses from points of interests in Cornwall and reproject to EPSG:3035 (ETRS89/LAEA)";}i:2;i:341;}i:32;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:439;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:441;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:137:"
ogr2ogr -t_srs epsg:3035 -where 'NAME like "Golf course:%"' ${OUTPUTDIR}/exercise2/cornwall_golf_3035.shp ${VECTORDIR}/cornwall_poi.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:448;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:448;}i:36;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:600;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Remove old output";}i:2;i:602;}i:38;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:619;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:621;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:55:"
rm -f ${OUTPUTDIR}/exercise3/golf_ndvi_mean_stdev.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:628;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:628;}i:42;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:697;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"Extract NDVI time series from golf in Cornwall (mean value for each polygon)";}i:2;i:699;}i:44;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:775;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:777;}i:46;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:11:"notewarning";}i:2;i:1;i:3;s:14:"<note warning>";}i:2;i:779;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:55:"make sure to set OUTPUTDIR and vector file is available";}i:2;i:3;i:3;s:55:"make sure to set OUTPUTDIR and vector file is available";}i:2;i:794;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:849;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:850;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:694:"
for MONTH in 01 02 03 04 05 06 07 08 09 10 11 12;do
    MODIS250IMG=2006${MONTH}-A_MOT_CX-MED16_3500035000-AA.tif
    rm -f ${OUTPUTDIR}/exercise3/golf_modis_${MONTH}.shp
    echo "extract NDVI for month $MONTH"
    pkextract -i ${OUTPUTDIR}/exercise3/2006${MONTH}-MODIS250_CW_NDVI.tif -s ${OUTPUTDIR}/exercise3/cornwall_golf_3035.shp -m ${OUTPUTDIR}/exercise3/2006${MONTH}-MODIS250_CW_MASK.tif -msknodata 0 -o ${OUTPUTDIR}/exercise3/golf_modis_${MONTH}.shp -bn NDVI --ftype Integer
    echo "calculate statistics using pkstatogr"
    pkstatogr -i ${OUTPUTDIR}/exercise3/golf_modis_${MONTH}.shp -n NDVI -mean -stdev| awk '{print $4,$6}' >> ${OUTPUTDIR}/exercise3/golf_ndvi_mean_stdev.txt
done
";i:1;s:4:"bash";i:2;N;}i:2;i:864;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:864;}i:52;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1572;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1574;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1574;}i:55;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1576;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Plot the profiles in gnuplot";}i:2;i:1578;}i:57;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1606;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" (click ";}i:2;i:1608;}i:59;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:9:"gnuplot3b";i:1;s:5:" here";}i:2;i:1616;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" for the code).";}i:2;i:1636;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1651;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1651;}i:63;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1653;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Try different smoothing functions in gnuplot";}i:2;i:1655;}i:65;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1699;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" (click ";}i:2;i:1701;}i:67;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:9:"gnuplot3c";i:1;s:5:" here";}i:2;i:1709;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" for the code).";}i:2;i:1729;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1744;}i:70;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1744;}i:71;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1744;}}