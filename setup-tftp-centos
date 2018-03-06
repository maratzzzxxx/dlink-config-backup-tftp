yum install -y expect
yum install -y telnet
yum install -y tftp-server tftp
adduser tftpd
chown tftpd:tftpd /media/backup/sw/
iptables -I INPUT -p udp --dport 69 -j ACCEPT
service iptables save
cp tftp /etc/xinetd.d/tftp
service xinetd restart
chkconfig xinetd on
