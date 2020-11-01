a:48:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"Exercise 8b: publishing results on file and the web";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"The following tools will be used in this exercise:";}i:2;i:67;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:117;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"
pktools: pkinfo, pkmosaic, pksetmask, pkextract";}i:2;i:119;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:167;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"
GDAL/OGR: gdal_translate, gdal2tiles,py";}i:2;i:169;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:209;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"
openev, QGIS";}i:2;i:211;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:224;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:226;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:226;}i:14;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:228;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"Visualize classification result in openev (or QGIS)";}i:2;i:230;}i:16;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:281;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:283;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
openev -h ${OUTPUTDIR}/exercise8/19990724_L7E_IM_FMAP.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:290;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:290;}i:20;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:364;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"First generate key (e.g., my key is: AxxxY)";}i:2;i:366;}i:22;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:409;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:411;}i:24;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:412;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"Then we need to convert paletted file (GTiff with colour table) to  RGB(A) file. We can do this with a virtual file:";}i:2;i:414;}i:26;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:530;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:532;}i:28;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:94:"
gdal_translate -of vrt -expand rgba ${OUTPUTDIR}/exercise8/19990724_L7E_IM_FMAP.tif temp.vrt
";i:1;s:4:"bash";i:2;N;}i:2;i:539;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:539;}i:30;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:648;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Create tiles";}i:2;i:650;}i:32;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:662;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:664;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:33:"
gdal2tiles.py -g AxxxY temp.vrt
";i:1;s:4:"bash";i:2;N;}i:2;i:671;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:671;}i:36;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:719;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"By default this created levels from 6-11. To increase one zoom level, you can extend by:";}i:2;i:721;}i:38;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:809;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:811;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
gdal2tiles.py -g AxxxY -e -z 12 temp.vrt
";i:1;s:4:"bash";i:2;N;}i:2;i:818;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:818;}i:42;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:875;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"Directory temp will be created with tiles and PNG images that can be viewed in internet browser";}i:2;i:877;}i:44;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:972;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:974;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:975;}i:47;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:975;}}