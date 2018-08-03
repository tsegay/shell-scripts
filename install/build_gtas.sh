
GTAS_DEV=/home/gtas/repository

# add mvn install
cd $GTAS_DEV/gtas-parent
sudo -u gtas mvn clean install -Dskip.unit.tests=true

# run GTAS database script
## add createDatabaseIfNotExist=true to the mysql connection string
cd $GTAS_DEV/gtas-parent/gtas-commons/
sudo -u gtas mvn hibernate4:export