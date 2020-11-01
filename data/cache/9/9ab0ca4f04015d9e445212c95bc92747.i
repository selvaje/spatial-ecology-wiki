a:28:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"EOF method";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"If we have a short R script or a single R function we can emberd this R command into a bash script and process it using one cores using the bash ";}i:2;i:27;}i:5;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:40:"http://en.wikipedia.org/wiki/End-of-file";i:1;s:3:"EOF";}i:2;i:172;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" function.";}i:2;i:220;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:230;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"
The  ";}i:2;i:232;}i:9;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:238;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"export";}i:2;i:240;}i:11;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:246;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" bash fonticon and the ";}i:2;i:248;}i:13;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:271;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Sys.getenv()";}i:2;i:273;}i:15;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:285;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:" R function allows to exchange variables between R and bash. We can use this functionality to embed an R command in bash.";}i:2;i:287;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:408;}i:2;i:5;i:3;s:3:"  
";}i:2;i:408;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:411;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:417;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:458:"
cd ~/Documents/multi_core
mod=1
t=24
path=~/Documents/multi_core/output
export mod
export t
export path

R --vanilla --no-readline   -q  << EOF
mod.t = Sys.getenv(c('mod','t','path'))
mod = as.numeric(mod.t[1])
t = as.numeric(mod.t[2])
path = as.character(mod.t[3])
print(mod)
print(t)
print(path)
my_output=paste("We have processed  mod ",mod," and t ",t," ---- output path is   ",path,sep=" ")
write.table(my_output,paste(path,"/mytext.txt",sep=""))
EOF

";i:1;s:4:"bash";i:2;N;}i:2;i:417;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:417;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"We can ";}i:2;i:890;}i:23;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:15:"cluster_r_xargs";i:1;s:10:"built an R";}i:2;i:897;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:" script using Sys.getenv() and launch it in a loop using multi cpu";}i:2;i:927;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:993;}i:26;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:993;}i:27;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:993;}}