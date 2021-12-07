#!/bin/bash

targets=`echo files/*/*.zip`
for target in $targets
do
  dir=`dirname $target`
  cd $dir
  zip=`basename $target`
  exdir=`basename $target .zip`
  mkdir $exdir
  unzip $zip -d $exdir
  cd ../../
done