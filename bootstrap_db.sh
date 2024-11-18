#!/bin/bash
export PGUSER="postgres"
export PGPASSWORD="brgm"

#psql -U $PGUSER -c 'DROP DATABASE IF EXISTS "cerif";'


for x in /initdb/build/*; do
psql -U $PGUSER -f $x
done

for x in /initdb/epos-datamodel-db/*; do
echo "Handling file $x"
psql -U $PGUSER -d cerif -f $x
done

for x in /initdb/epos-datamodel-semantic/*; do
echo "Handling file $x"
psql -U $PGUSER -d cerif -f $x
done

for x in /initdb/epos-converter-db/*; do
echo "Handling file $x"
psql -U $PGUSER -d cerif -f $x
done

for x in /initdb/epos-processing-db/*; do
echo "Handling file $x"
psql -U $PGUSER -d cerif -f $x
done

for x in /initdb/epos-sharing-db/*; do
echo "Handling file $x"
psql -U $PGUSER -d cerif -f $x
done


for x in /initdb/postgis-setting/*; do
echo "Handling file $x"
psql -U $PGUSER -d cerif -f $x
done
