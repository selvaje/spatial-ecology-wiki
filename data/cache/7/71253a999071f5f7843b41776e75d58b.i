a:21:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Create additional features for data fusion";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:55;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Create NDVI image from CASI image";i:1;i:4;i:2;i:55;}i:2;i:55;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:55;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:133:"
    pkndvi -r ndvi -b 67 -b 115 -dst_s 10000 -ot UInt16 -i 2013_IEEE_GRSS_DF_Contest_CASI.tif -o 2013_IEEE_GRSS_DF_Contest_NDVI.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:102;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:102;}i:8;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:48:":wiki:contest:2013_ieee_grss_df_contest_ndvi.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:249;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:5:"    
";i:1;i:5;i:2;i:311;}i:2;i:5;i:3;s:5:"    
";}i:2;i:311;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:316;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:317;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:317;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Create linear features";i:1;i:4;i:2;i:317;}i:2;i:317;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:317;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:128:"
    pkfilter -f linearfeature -ot UInt16 -i 2013_IEEE_GRSS_DF_Contest_NDVI.tif -o 2013_IEEE_GRSS_DF_Contest_LINEAR.tif -l1 -l2
";i:1;s:4:"bash";i:2;N;}i:2;i:353;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:353;}i:17;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:50:":wiki:contest:2013_ieee_grss_df_contest_linear.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:495;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:559;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:560;}i:20;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:560;}}