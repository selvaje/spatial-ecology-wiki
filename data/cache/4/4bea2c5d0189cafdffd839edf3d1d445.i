a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"Insert these lines in your bash script allowing to run your script by ";}i:2;i:1;}i:3;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:71;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"bash name_script.sh";}i:2;i:73;}i:5;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:92;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:". Of course set the settled directories  in accordance to your directories.";}i:2;i:94;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:169;}i:8;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:350:"
echo "LOCATION_NAME: europe"                     >  $HOME/.grassrc6
echo "MAPSET: PERMANENT"                         >> $HOME/.grassrc6
echo "DIGITIZER: none"                           >> $HOME/.grassrc6
echo "GRASS_GUI: text"                           >> $HOME/.grassrc6
echo "GISDBASE: /home/user/ost4sem/grassdb"               >> $HOME/.grassrc6
";i:1;s:4:"bash";i:2;N;}i:2;i:176;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"path to GRASS binaries and libraries:";i:1;i:1;i:2;i:539;}i:2;i:539;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:539;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:40:"
# path to GRASS binaries and libraries:";}i:2;i:539;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:144:"
export GISBASE=/usr/lib/grass64
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH="$GISBASE/lib"
export GISRC=~/.grassrc6
";i:1;s:4:"bash";i:2;N;}i:2;i:585;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:743;}i:14;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"use process ID (PID) as lock file number:";i:1;i:1;i:2;i:743;}i:2;i:743;}i:15;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:743;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:44:"
# use process ID (PID) as lock file number:";}i:2;i:743;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"

export GIS_LOCK=$$
";i:1;s:4:"bash";i:2;N;}i:2;i:793;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:828;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:52:"settings for graphical output to PNG file (optional)";i:1;i:1;i:2;i:828;}i:2;i:828;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:828;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:55:"
# settings for graphical output to PNG file (optional)";}i:2;i:828;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:151:"
export GRASS_PNGFILE=/tmp/grass6output.png
export GRASS_TRUECOLOR=TRUE
export GRASS_WIDTH=900
export GRASS_HEIGHT=1200
export GRASS_PNG_COMPRESSION=1
";i:1;s:4:"bash";i:2;N;}i:2;i:889;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1054;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:72:"test if your script is able to use grass command by asking the  g.gisenv";i:1;i:1;i:2;i:1054;}i:2;i:1054;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1054;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:75:"
# test if your script is able to use grass command by asking the  g.gisenv";}i:2;i:1054;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:10:"
g.gisenv
";i:1;s:4:"bash";i:2;N;}i:2;i:1136;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1160;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1160;}}