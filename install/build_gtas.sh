
GTAS_DEV=/home/$(whoami)/repository

# Checkout GTAS dev branch from github repository
sudo -u $(whoami) git clone --single-branch --branch dev https://github.com/US-CBP/GTAS.git $GTAS_DEV/temp

mv $GTAS_DEV/temp $GTAS_DEV/

# add mvn install
cd $GTAS_DEV/gtas-parent
sudo -u $(whoami) mvn clean install -Dskip.unit.tests=true

# run GTAS database script
## add createDatabaseIfNotExist=true to the mysql connection string
cd $GTAS_DEV/gtas-parent/gtas-commons/
sudo -u $(whoami) mvn hibernate:drop
sudo -u $(whoami) mvn hibernate:create
