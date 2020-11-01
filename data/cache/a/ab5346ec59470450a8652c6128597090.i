a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Accuracy assessment";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:32;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:53:"Create reference vector with CASI bands as attributes";i:1;i:4;i:2;i:32;}i:2;i:32;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:32;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:120:"
    pkextract -i 2013_IEEE_GRSS_DF_Contest_CASI.tif -s 2013_IEEE_GRSS_DF_Contest_Samples_VA.shp -o validation_casi.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:99;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:99;}i:8;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:28:":wiki:contest:validation.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:234;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:276;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:278;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:62:"Perform accuracy assessment on CASI bands using pkclassify_svm";i:1;i:4;i:2;i:278;}i:2;i:278;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:278;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:64:"
    pkclassify_svm -t training_casi.shp -i validation_casi.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:354;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:433;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"Perform accuracy assessment on CASI bands using pkdiff";i:1;i:4;i:2;i:433;}i:2;i:433;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:433;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:82:"
    pkdiff -i testmap_casi.tif -ref 2013_IEEE_GRSS_DF_Contest_Samples_VA.shp -cm
";i:1;s:4:"bash";i:2;N;}i:2;i:501;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:598;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"Perform the accuracy assessment";i:1;i:4;i:2;i:598;}i:2;i:598;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:598;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:86:"
    pkdiff -i testmap_final_ff.tif -ref 2013_IEEE_GRSS_DF_Contest_Samples_VA.shp -cm
";i:1;s:4:"bash";i:2;N;}i:2;i:643;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:743;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:743;}}