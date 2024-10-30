#!/bin/bash

#psql -Atx $POSTGRESQL_JOB_CONNECTION_STRING -c 'DROP DATABASE IF EXISTS "cerif";'

for x in /init-db/clean/*; do
psql -Atx $POSTGRESQL_JOB_CONNECTION_STRING_PG -f $x
done

for x in /init-db/epos-datamodel-db/*; do
psql -Atx $POSTGRESQL_JOB_CONNECTION_STRING -f $x
done

for x in /init-db/epos-processing-db/*; do
psql -Atx $POSTGRESQL_JOB_CONNECTION_STRING -f $x
done

for x in /init-db/epos-converter-db/*; do
psql -Atx $POSTGRESQL_JOB_CONNECTION_STRING -f $x
done

for x in /init-db/postgis-setting/*; do
psql -Atx $POSTGRESQL_JOB_CONNECTION_STRING_PG -f $x
done

