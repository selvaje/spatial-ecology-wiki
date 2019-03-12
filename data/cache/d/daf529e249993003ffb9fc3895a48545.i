a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"install in both pc ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:21;}i:4;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:103:" sudo apt-get install openssh-client
 sudo apt-get install openssh-server
 sudo /etc/init.d/ssh restart";}i:2;i:21;}i:5;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:21;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Get the ip with ifconfig";}i:2;i:133;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:157;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:157;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"scp of several files on remote server, parsing the pw in automatic. ";}i:2;i:159;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:228;}i:11;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:122:" ls Smoothed_*.bil | xargs -n 1 -P 10 bash -c ' sshpass -p 'passward' scp $1  selv@123.16.125.12:/home/selv/dem   ' _ 
 
 ";}i:2;i:228;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:228;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"mount a remote server";}i:2;i:358;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:379;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:358:" 
 sshfs hostname: mountpoint
 eg
 sshfs  data_urban/ giuseppea@litoria.eeb.yale.edu:/mnt/data2/scratch/data_ur/
 
 # to specify the ownership of the folder 
 sudo sshfs  -o nonempty   -o allow_other  -o uid=1115  -o gid=1115    /home/samid/grassdb/  samid@turaco.eeb.yale.edu:/mnt/data2/scratch/sami/grassbdmount/
 
 # get the uid by id -u  and id -g 
 
 
 ";}i:2;i:379;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:379;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"create a ftp on a machine ";}i:2;i:763;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:789;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:120:" sudo apt-get install vsftpd
 mkdir /home/selv/ftp
 sudo usermod -d /home/selv/ftp ftp
 sudo /etc/init.d/vsftpd restart
";}i:2;i:789;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:789;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"rsync via ssh ";}i:2;i:921;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:935;}i:23;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:111:" rsync  -v -e ssh    cloud/tif/cloud7.tif      ga254@bulldogj.wss.yale.edu:/lustre0/scratch/ga254/dem_bj/CLOUD/";}i:2;i:935;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:935;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"create a mount point i the ram ";}i:2;i:1052;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1083;}i:27;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:134:" sudo mount -t tmpfs   -o size=50G tmpfs /tmp/tmp_ram
 # in case you need specific permision
 sudo chown -R   samid:samid /tmp/tmp_ram";}i:2;i:1083;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1083;}}