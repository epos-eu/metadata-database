#!/bin/bash

USER="postgres"
PASSWORD="changeme"
DATABASE_NAME="cerif"
NAME="db-test"

docker rm -f $NAME

docker run -d \
    --name $NAME \
    -e POSTGRES_USER=$USER \
    -e POSTGRES_PASSWORD=$PASSWORD \
    -e POSTGRES_DB=$DATABASE_NAME \
    -e PGDATA=/data/postgres \
    -p 5432:5432 \
    kartoza/postgis:16-3.4--v2024.03.17

sleep 30

PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-db/datamodel.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-semantic/1-create_database.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-semantic/2-class_property_domain_range.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-datamodel-semantic/3-source_to_target_mapping.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-processing-db/processing_environment_db.sql
PGPASSWORD=$PASSWORD psql -U $USER -d $DATABASE_NAME -h localhost -f ./epos-converter-db/plugins_registry.sql
