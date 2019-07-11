
GTAS_DEV=/home/$(whoami)/repository

cp $GTAS_DEV/gtas-parent/gtas-webapp/target/gtas.war /usr/local/tomcat/webapps/

cp $GTAS_DEV/gtas-parent/gtas-job-scheduler-war/target/gtas-job-scheduler.war /usr/local/tomcat/webapps/
