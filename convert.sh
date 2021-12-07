#!/bin/bash

targets=`echo files/*/*/FG-GML*.xml`
output=kiban.gpkg
rm $output
first=1
for target in $targets
do
  filename=`basename $target`
  layer=`echo $filename | awk -F'-' '{print $4}'`
  echo $target $layer
  if [[ first -eq 1 ]];
  then
    ogr2ogr -f "GPKG" -nln $layer $output $target
    first=0
  else
    ogr2ogr -f "GPKG" -nln $layer -update -append $output $target
  fi
done