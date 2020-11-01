a:31:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:65:"Install pktools, openev and R 4.0.2 in OSGeoLive 13 Linux Virtual";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"sudo require a pw that in for the OSGeoLive 13 is ";}i:2;i:84;}i:5;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:134;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"user";}i:2;i:136;}i:7;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:140;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:142;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:143;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"
pay attention that when you type the pw you do not see that you are typing it is just for security.";}i:2;i:145;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:245;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:247;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"Install pktools with the package manager";i:1;i:4;i:2;i:247;}i:2;i:247;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:247;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:25:" sudo apt install pktools";}i:2;i:296;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:326;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Install openev";i:1;i:4;i:2;i:326;}i:2;i:326;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:326;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:66:"sudo apt-get install libc6:i386
sudo apt-get install libxext6:i386";}i:2;i:349;}i:20;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:284:"cd /tmp
wget https://ayera.dl.sourceforge.net/project/openev/OpenEV/1.8.0/openev-linux-180.tar.gz
tar xvf openev-linux-180.tar.gz
cd openev
sudo ./install linux   /usr/bin/openev
# add to the ~/.bashrc the alias openev
echo "alias openev='/usr/bin/openev/bin/openev' "  >>  ~/.bashrc
";}i:2;i:421;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:421;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"at this point you can run directly openev from the terminal ";}i:2;i:723;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:784;}i:24;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:7:"openev
";}i:2;i:784;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:798;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Install R version 4.0.2";i:1;i:4;i:2;i:798;}i:2;i:798;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:798;}i:28;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:304:"sudo apt update 
sudo apt upgrade
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
sudo apt update 
sudo apt install r-base r-base-core r-recommended r-base-dev";}i:2;i:830;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1148;}i:30;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1148;}}