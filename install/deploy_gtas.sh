
GTAS_DEV=/home/gtas/repository

cd $GTAS_DEV/gtas-parent/gtas-webapp

sudo -u gtas /usr/local/maven/bin/mvn initialize tomcat7:deploy

cd $GTAS_DEV/gtas-parent/gtas-job-scheduler-war

sudo -u gtas /usr/local/maven/bin/mvn initialize tomcat7:deploy