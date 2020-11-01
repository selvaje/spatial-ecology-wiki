a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Exercise 7: morphological filters";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"In this exercise, the following tools will be used:";}i:2;i:49;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:100;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:100;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:100;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:100;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" pktools: pkfilter";}i:2;i:104;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:122;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:122;}i:12;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:122;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:7:"notetip";}i:2;i:1;i:3;s:10:"<note tip>";}i:2;i:124;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:61:"Optional: crop the image to test some filters on limited area";}i:2;i:3;i:3;s:61:"Optional: crop the image to test some filters on limited area";}i:2;i:134;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:195;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:161:"
ULX=3217600
ULY=3127850
LRX=3225650
LRY=3119900
pkcrop -i ${OUTPUTDIR}/cloudmask.tif -o ${OUTPUTDIR}/cloudmask_crop.tif -ulx $ULX -uly $ULY -lrx $LRX -lry $LRY
";i:1;s:4:"bash";i:2;N;}i:2;i:208;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:7:"notetip";}i:2;i:1;i:3;s:10:"<note tip>";}i:2;i:384;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:87:"morphological filters: dilation (-f 7), erosion (-f 8), closing (-f 9), opening (-f 10)";}i:2;i:3;i:3;s:87:"morphological filters: dilation (-f 7), erosion (-f 8), closing (-f 9), opening (-f 10)";}i:2;i:394;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:481;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:481;}i:21;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:489;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Perform a dilation filter on the cloud mask";}i:2;i:491;}i:23;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:534;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:536;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:542;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:94:"
pkfilter -i ${OUTPUTDIR}/cloudmask.tif -o ${OUTPUTDIR}/cloudmask_dil.tif -f 7 -dx 5 -dy 5 -c
";i:1;s:4:"bash";i:2;N;}i:2;i:542;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:649;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:649;}}