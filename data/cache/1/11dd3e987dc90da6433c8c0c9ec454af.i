a:16:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:251:"for n in $(seq 1 40) ; do 
adduser --disabled-password --gecos "" user$n
mkdir -p  /home/user$n/.ssh 
cp /home/ubuntu/.ssh/authorized_keys  /home/user$n/.ssh 
chown -R user$n.user$n /home/user$n/.ssh 
chmod 600  /home/user$n/.ssh/authorized_keys
done ";}i:2;i:1;}i:2;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Mount an external volume to a instance";i:1;i:3;i:2;i:271;}i:2;i:271;}i:3;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:271;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:271;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"After have been created the volume in the aws attach the instance 
log in the instance ";}i:2;i:321;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:408;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:408;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"in the instance proprieties you can find the ";}i:2;i:410;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:455;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:455;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"Block devices  /dev/sdf   in unbut this dir i visible under /dev/xvdf ";}i:2;i:457;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:528;}i:13;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:71:"sudo mkfs.ext4   /dev/xvdf 
mkdir data 
sudo mount      /dev/xvdf /data";}i:2;i:528;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:608;}i:15;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:608;}}