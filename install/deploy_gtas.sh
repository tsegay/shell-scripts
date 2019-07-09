
GTAS_DEV=/home/$(whoami)/repository

cd $GTAS_DEV/gtas-parent/gtas-webapp

sudo -u $(whoami) /usr/local/maven/bin/mvn initialize tomcat7:deploy

cd $GTAS_DEV/gtas-parent/gtas-job-scheduler-war

sudo -u $(whoami) /usr/local/maven/bin/mvn initialize tomcat7:deploy
