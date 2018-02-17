a:36:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Setting GRASS70 variables for GRASS bash job";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:166:"Insert these lines in your bash script allowing to run your script by bash name_script.sh. 
Of course set the settled directories  in accordance to your directories.
";}i:2;i:58;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:224;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:226;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:227;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:229;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:230;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:232;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:233;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:235;}i:13;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:236;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:238;}i:15;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:239;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:241;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:356:"
echo "GISDBASE: /home/user/ost4sem/grassdb"      >  $HOME/.grass7/rc$$
echo "LOCATION_NAME: newlocation"                >> $HOME/.grass7/rc$$
echo "MAPSET: PERMANENT"                         >> $HOME/.grass7/rc$$
echo "GUI: text"                                 >> $HOME/.grass7/rc$$
echo "GRASS_GUI: wxpython"                       >> $HOME/.grass7/rc$$
";i:1;s:4:"bash";i:2;N;}i:2;i:248;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:622;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"path to GRASS binaries and libraries:";i:1;i:3;i:2;i:622;}i:2;i:622;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:622;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:289:"
export GISBASE=/usr/lib/grass70
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$GISBASE/lib"
export GISRC=$HOME/.grass7/rc$$
export GRASS_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"
export PYTHONPATH="$GISBASE/etc/python:$PYTHONPATH"
export MANPATH=$MANPATH:$GISBASE/man

";i:1;s:4:"bash";i:2;N;}i:2;i:676;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:980;}i:23;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"use process ID (PID) as lock file number:";i:1;i:3;i:2;i:980;}i:2;i:980;}i:24;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:980;}i:25;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"

export GIS_LOCK=$$
";i:1;s:4:"bash";i:2;N;}i:2;i:1038;}i:26;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1074;}i:27;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:52:"settings for graphical output to PNG file (optional)";i:1;i:3;i:2;i:1074;}i:2;i:1074;}i:28;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1074;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:151:"
export GRASS_PNGFILE=/tmp/grass6output.png
export GRASS_TRUECOLOR=TRUE
export GRASS_WIDTH=900
export GRASS_HEIGHT=1200
export GRASS_PNG_COMPRESSION=1
";i:1;s:4:"bash";i:2;N;}i:2;i:1143;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1309;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:72:"test if your script is able to use grass command by asking the  g.gisenv";i:1;i:3;i:2;i:1309;}i:2;i:1309;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1309;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:10:"
g.gisenv
";i:1;s:4:"bash";i:2;N;}i:2;i:1399;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1422;}i:35;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1422;}}