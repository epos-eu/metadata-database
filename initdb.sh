#Copyright 2021 EPOS ERIC
# 
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License.  You may obtain a copy
# of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations under
# the License.

INITCERIF=docker-entrypoint-initdb.d
COUNT=0

mkdir $INITCERIF

for x in build/*; do
cp  $x $INITCERIF/$((COUNT))_${x##*/}
done 
COUNT=$((COUNT + 1))

for x in epos-datamodel-db/*; do
echo "\connect cerif;" > $INITCERIF/$((COUNT))_${x##*/}
cat  $x >> $INITCERIF/$((COUNT))_${x##*/}
done
COUNT=$((COUNT + 1))

echo ${ADMIN_REFACTORING_INSERT} > $INITCERIF/$((COUNT))_admins.sql
COUNT=$((COUNT + 1))

for x in epos-processing-db/*; do
echo "\connect cerif;" > $INITCERIF/$((COUNT))_${x##*/}
cat  $x >> $INITCERIF/$((COUNT))_${x##*/}
done
COUNT=$((COUNT + 1))

for x in epos-converter-db/*; do
echo "\connect cerif;" > $INITCERIF/$((COUNT))_${x##*/}
cat  $x >> $INITCERIF/$((COUNT))_${x##*/}
done
COUNT=$((COUNT + 1))

for x in postgis-setting/*; do
echo "\connect cerif;" > $INITCERIF/$((COUNT))_${x##*/}
cat  $x >> $INITCERIF/$((COUNT))_${x##*/}
done
COUNT=$((COUNT + 1))