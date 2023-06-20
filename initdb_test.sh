#!/bin/bash

USER="postgres"
PASSWORD="superdam"
DATABASE_NAME="cerif"
NAME="converter"

docker rm -f $NAME

docker run -d \
    --name $NAME \
    -e POSTGRES_USER=$USER \
    -e POSTGRES_PASSWORD=$PASSWORD \
    -e POSTGRES_DB=$DATABASE_NAME \
    -e PGDATA=/data/postgres \
    -p 5432:5432 \
    kartoza/postgis:14-3.1--v2021.10.12

sleep 8

PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-db/initdatamodeldb.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-semantic/1-create_database.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-semantic/2-class_property_domain_range.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-semantic/3-source_to_target_mapping.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-processing-db/processing_environment_db.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-converter-db/plugins_registry.sql
