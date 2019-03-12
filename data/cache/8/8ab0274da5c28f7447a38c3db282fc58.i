a:141:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"Exercise 5a: Find thresholds for cloud mask";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"In this exercise, the following tools will be used:";}i:2;i:60;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:111;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:111;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:111;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:111;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:" pktools:  pkascii2ogr, pkextract, pkstatogr, pkdumpogr";}i:2;i:115;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:170;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:170;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:170;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:170;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" bash: cat, redirection";}i:2;i:174;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:197;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:197;}i:17;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:197;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:197;}i:19;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:199;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Create a directory for this exercise";}i:2;i:201;}i:21;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:237;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:239;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:33:"
mkdir -p ${OUTPUTDIR}/exercise5
";i:1;s:4:"bash";i:2;N;}i:2;i:246;}i:24;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:7:"notetip";}i:2;i:1;i:3;s:10:"<note tip>";}i:2;i:294;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:14:"Landsat bands:";}i:2;i:3;i:3;s:14:"Landsat bands:";}i:2;i:305;}i:26;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:319;}i:27;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:319;}i:28;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:319;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" band 1: blue (0.45 - 0.515 \mu m)";}i:2;i:323;}i:30;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:357;}i:31;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:357;}i:32;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:357;}i:33;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:357;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" band 2: green (0.525 - 0.605 \mu m)";}i:2;i:361;}i:35;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:397;}i:36;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:397;}i:37;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:397;}i:38;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:397;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" band 3: red (0.63 - 0.69 \mu m)";}i:2;i:401;}i:40;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:433;}i:41;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:433;}i:42;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:433;}i:43;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:433;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" band 4: nir (0.75 - 0.90 \mu m)";}i:2;i:437;}i:45;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:469;}i:46;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:469;}i:47;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:469;}i:48;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:469;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" band 5: swir 1 (1.55 - 1.75 \mu m)";}i:2;i:473;}i:50;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:508;}i:51;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:508;}i:52;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:508;}i:53;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:508;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" band 6 (6a): tir 1 (10.40 - 12.5 \mu m)";}i:2;i:512;}i:55;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:552;}i:56;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:552;}i:57;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:552;}i:58;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:552;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:" band 7 (6b): tir 2";}i:2;i:556;}i:60;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:575;}i:61;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:575;}i:62;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:575;}i:63;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:575;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" band 8 (7): swir 2 (2.09 - 2.35 \mu m)";}i:2;i:579;}i:65;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:618;}i:66;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:618;}i:67;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:618;}i:68;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:618;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:" band9: pan-chromatic";}i:2;i:622;}i:70;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:643;}i:71;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:643;}i:72;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:643;}i:73;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:644;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:644;}i:75;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:653;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"Find the geographic coordinates for cloud pixels";}i:2;i:655;}i:77;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:703;}i:78;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:705;}i:79;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
cat > ${OUTPUTDIR}/exercise5/clouds.txt <<EOF
cloud 3222350 3123150
cloud 3123150 3123635
cloud 3221195 3123750
cloud 3219120 3122590
EOF
";i:1;s:4:"bash";i:2;N;}i:2;i:712;}i:80;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:712;}i:81;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:866;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"Find the geographic coordinates for non cloud pixels";}i:2;i:868;}i:83;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:920;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:922;}i:85;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:171:"
cat > ${OUTPUTDIR}/exercise5/clouds.txt <<EOF
nocloud 3269100 3135160
nocloud 3269150 3134935
nocloud 3272665 3135925
nocloud 3272460 3135730
nocloud 3273560 3136620
EOF
";i:1;s:4:"bash";i:2;N;}i:2;i:929;}i:86;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:929;}i:87;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1115;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Create vector file for clouds";}i:2;i:1117;}i:89;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1146;}i:90;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1148;}i:91;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:135:"
pkascii2ogr -i ${OUTPUTDIR}/exercise5/clouds.txt -x 1 -y 2 -n label --ot String -a_srs epsg:3035 -o ${OUTPUTDIR}/exercise5/clouds.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:1155;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1155;}i:93;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1305;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Create vector file for cloud free pixels";}i:2;i:1307;}i:95;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1347;}i:96;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1349;}i:97;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
pkascii2ogr -i ${OUTPUTDIR}/exercise5/noclouds.txt -x 1 -y 2 -n label --ot String -a_srs epsg:3035 -o ${OUTPUTDIR}/exercise5/noclouds.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:1356;}i:98;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1356;}i:99;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1510;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Extract LANDSAT cloud pixels";}i:2;i:1512;}i:101;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1540;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1542;}i:103;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:125:"
pkextract -i ${LANDSATDIR}/${LANDSATIMG} -s ${OUTPUTDIR}/exercise5/clouds.shp -o ${OUTPUTDIR}/exercise5/clouds_landsat.shp 
";i:1;s:4:"bash";i:2;N;}i:2;i:1549;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1549;}i:105;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1689;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Extract LANDSAT cloud free pixels";}i:2;i:1691;}i:107;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1724;}i:108;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1726;}i:109;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:129:"
pkextract -i ${LANDSATDIR}/${LANDSATIMG} -s ${OUTPUTDIR}/exercise5/noclouds.shp -o ${OUTPUTDIR}/exercise5/noclouds_landsat.shp 
";i:1;s:4:"bash";i:2;N;}i:2;i:1733;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1733;}i:111;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1877;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"Calculate mean and stdev cloud pixels";}i:2;i:1879;}i:113;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1916;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1918;}i:115;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:193:"
pkstatogr -i ${OUTPUTDIR}/exercise5/clouds_landsat.shp -n B0 -n B1 -n B2 -n B3 -n B4 -n B5 -n B6 -n B7 -mean -stdev| awk '{print $4,$6}' > ${OUTPUTDIR}/exercise5/clouds_landsat_mean_stdev.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:1925;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1925;}i:117;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:2133;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Calculate mean and stdev nocloud pixels";}i:2;i:2135;}i:119;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:2174;}i:120;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2176;}i:121;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:197:"
pkstatogr -i ${OUTPUTDIR}/exercise5/noclouds_landsat.shp -n B0 -n B1 -n B2 -n B3 -n B4 -n B5 -n B6 -n B7 -mean -stdev| awk '{print $4,$6}' > ${OUTPUTDIR}/exercise5/noclouds_landsat_mean_stdev.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:2183;}i:122;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2183;}i:123;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:2395;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Dump ogr to ascii text file";}i:2;i:2397;}i:125;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:2424;}i:126;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2426;}i:127;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:317:"
pkdumpogr -i ${OUTPUTDIR}/exercise5/clouds_landsat.shp -n label -n B0 -n B1 -n B2 -n B3 -n B4 -n B5 -n B6 -n B7 > ${OUTPUTDIR}/exercise5/clouds_landsat.txt
pkdumpogr -i ${OUTPUTDIR}/exercise5/noclouds_landsat.shp -n label -n B0 -n B1 -n B2 -n B3 -n B4 -n B5 -n B6 -n B7 > ${OUTPUTDIR}/exercise5/noclouds_landsat.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:2433;}i:128;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2433;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Plot the profiles in gnuplot (click ";}i:2;i:2765;}i:130;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:9:"gnuplot5a";i:1;s:5:" here";}i:2;i:2801;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" for the code)";}i:2;i:2821;}i:132;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2835;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2835;}i:134;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:2837;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"Find appropriate thresholds for bands 1,4 and 7 to create a cloud mask";}i:2;i:2839;}i:136;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:2909;}i:137;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2911;}i:138;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2911;}i:139;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2911;}i:140;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2911;}}