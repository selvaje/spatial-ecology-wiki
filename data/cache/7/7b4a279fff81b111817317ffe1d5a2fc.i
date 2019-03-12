a:46:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Local Climate";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:"We are interested in few key climatic parameters affecting farm productivity and site design. We will start with analysing the following parameters:";}i:2;i:30;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:178;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:178;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:178;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:178;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:" Minimum winter temperatures (limiting factor)";}i:2;i:182;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:228;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:228;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:228;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:228;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" Maximum daily rain (flush flooding)";}i:2;i:232;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:268;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:268;}i:17;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:268;}i:18;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:268;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:" Accumulated temperature (degree days for planting crop and disease monitering)";}i:2;i:272;}i:20;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:351;}i:21;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:351;}i:22;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:351;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:351;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"We can acces climatic records from ";}i:2;i:353;}i:25;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:29:"http://www.usclimatedata.com/";i:1;s:16:" US Climate data";}i:2;i:388;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:" web site.
The following bash code is able to download data and extract parameters 1 and 2.
";}i:2;i:438;}i:27;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:530;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:532;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:538;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1656:"
mkdir mysville
cd mysville/

echo "day month year HighT LowT Precip Snow Snowdepth" > maysville_clim.txt
for year in $(seq 2000 2015) ; do
for month in $(seq 1 12) ; do
wget www.usclimatedata.com/climate/maysville/missouri/united-states/usmo1271/$year/$month \\
-O clim$month$year
html2text clim$month$year | awk -v year=$year '{ if($1>0 && $1<31 && $3==year)  \\ 
print  $0}' >> maysville_clim.txt
done
done

# Coldest day
sort -nk 5 maysville_clim.txt | head -n 1
# day month year HighT LowT Precip Snow Snowdepth
# 24 dec 2013 8.1     -16.1   0.00    0.00   5.98

# Warmest day
sort -nk 4 maysville_clim.txt | tail -10
# 23 jul 2012 102.9   73.0    0.00    -      -
# 25 jul 2012 102.9   79.0    0.00    -      -
# 27 aug 2003 102.9   73.0    0.00    0.00   0.00
# 8 aug 2012  102.9   68.0    0.00    -      -
# 24 jul 2012 104.0   73.0    0.00    -      -
# 19 aug 2003 105.1   73.0    0.00    0.00   0.00
# 19 jul 2012 105.1   77.0    0.00    -      -
# 26 aug 2003 105.1   75.9    0.00    0.00   0.00
# 26 jul 2012 105.1   73.0    0.28    -      -
# 8 jul 2012  105.1   70.0    1.15    -      -

# Heaviest rain
sort -nk 6 maysville_clim.txt | tail -n 10
# 28 may 2013 73.9    64.0    3.50    -      -
# 19 may 2004 73.0    62.1    3.67    0.00   0.00
# 10 sep 2014 84.9    71.1    3.80    0.00   0.00
# 17 aug 2009 82.0    69.1    3.84    0.00   0.00
# 12 jun 2002 82.0    66.9    3.90    0.00   0.00
# 30 may 2004 -       -       4.18    0.00   0.00
# 13 sep 2008 73.0    69.1    4.29    0.00   0.00
# 7 may 2007  73.0    63.0    5.05    0.00   0.00
# 4 jun 2015  -       -       5.51    0.00   0.00
# 27 jun 2011 -       -       6.52    -      -
";i:1;s:4:"bash";i:2;N;}i:2;i:538;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:538;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"We can use R for computing Accumulate degree days and plot results in a graphic:";}i:2;i:2209;}i:33;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2289;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2291;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2297;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1320:"
table=read.table("maysville_clim.txt",na.str=c("T","-"),header=T)
cumsum(table[table$year==2000,4])
table$maxTcum=0

for (i in 2000:2015 ) {
table[table$year==i,9]=cumsum(table[table$year==i,4])
}

# table[table$year==2000,9]=cumsum(table[table$year==2000,4])

png("/home/user/accumulate_temp.png", width = 800, height = 800)
par(mar=c(5,5,5,1))
# NA 2001,  2004, 2010, 2011,2014
plot (table[table$year==2012,9],  xlab="Days of year", ylab="Accumulate Max Temperature (F)", main="Growth season", col="lightskyblue2",cex=3,cex.axis=1.5,cex.lab=2, cex.main=2)
lines(table[table$year==2002,9],col="red",lwd=3,cex=3)
lines(table[table$year==2003,9],col="blue",lwd=3,cex=3)
lines(table[table$year==2005,9],col="green",lwd=3,cex=3)
lines(table[table$year==2006,9],col="darkgreen",lwd=3,cex=3)
lines(table[table$year==2007,9],col="magenta",lwd=3,cex=3)
lines(table[table$year==2008,9],col="yellow3",lwd=3,cex=3)
lines(table[table$year==2009,9],col="yellow",lwd=3,cex=3)
lines(table[table$year==2013,9],col="deepskyblue",lwd=3,cex=3)
lines(table[table$year==2000,9],col="black",lwd=3,cex=3)

legend(5, 24000, c("2000","2002", "2003","2005","2006","2007","2008","2009","2012","2013"), col = c("black","red","blue","green","darkgreen","magenta","yellow3","yellow","lightskyblue2","deepskyblue"), lty = 1, lwd=4,cex=2)
dev.off()

";i:1;s:1:"R";i:2;N;}i:2;i:2297;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2297;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"The output graphic here below. Year 2013 was the warmest according to the US Climate data records.";}i:2;i:3629;}i:39;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3727;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:3729;}i:41;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:31:":sitedesign:accumulate_temp.png";i:1;s:0:"";i:2;N;i:3;s:3:"800";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3730;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:3770;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3770;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3770;}i:45;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3770;}}