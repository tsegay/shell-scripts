
GTAS_DEV=/home/$(whoami)/repository

cd $GTAS_DEV/gtas-parent/gtas-webapp

cp target/gtas.war /usr/local/tomcat/webapps/

cd $GTAS_DEV/gtas-parent/gtas-job-scheduler-war

cp target/gtas-job-scheduler.war /usr/local/tomcat/webapps/
