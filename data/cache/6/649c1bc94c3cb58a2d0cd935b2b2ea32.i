a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"The following environment variables should be set in the terminal before doing the exercises. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:95;}i:4;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:355:"
export MODIS500DIR=/home/user/week2/MODIS500
export MODIS250DIR=/home/user/week2/MODIS250
export LANDSATDIR=/home/user/week2/LANDSAT^C
export LANDSATDIR=/home/user/week2/LANDSATDIR
export LANDSATIMG=19990724_L7E_IP_IW.tif
export FMAPDIR=/home/user/week2/FMAP2006
export VECTORDIR=/home/user/week2/cornwall_vector
export OUTPUTDIR=/home/user/week2/output
";i:1;s:4:"bash";i:2;N;}i:2;i:102;}i:5;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:102;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"Create a script by writing these lines in a text file named setweek2.sh";}i:2;i:472;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:543;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:543;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Make the script executable and execute the script";}i:2;i:545;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:594;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:37:"
chmod u+x setweek2.sh
./setweek2.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:601;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:601;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:152:"In order to make scope of the variables visible to other processes, you have to run source (dot) on it (otherwise it is only visible to child processes)";}i:2;i:653;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:805;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:17:"
. ./setweek2.sh
";i:1;N;i:2;N;}i:2;i:812;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:812;}}