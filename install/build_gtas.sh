
GTAS_DEV=/home/$(whoami)/repository

# Checkout GTAS dev branch from github repository
git clone --single-branch --branch dev https://github.com/US-CBP/GTAS.git $GTAS_DEV/temp

cp -Rf $GTAS_DEV/temp/* $GTAS_DEV

rm -rf $GTAS_DEV/temp

# add mvn install
cd $GTAS_DEV/gtas-parent
mvn clean install -Dskip.unit.tests=true

# run GTAS database script
## add createDatabaseIfNotExist=true to the mysql connection string
cd $GTAS_DEV/gtas-parent/gtas-commons/
mvn hibernate:drop
mvn hibernate:create
