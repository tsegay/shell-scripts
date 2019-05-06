cp tomcat /etc/init.d/
ln -s /etc/init.d/tomcat /etc/rc2.d/S90tomcat

cp redis /etc/init.d/
ln -s /etc/init.d/redis /etc/rc2.d/S90redis

cp activemq /etc/init.d/
ln -s /etc/init.d/activemq /etc/rc2.d/S90activemq

chkconfig tomcat on
chkconfig redis on
chkconfig activemq on

sudo systemctl start tomcat
sudo systemctl start redis
sudo systemctl start activemq
