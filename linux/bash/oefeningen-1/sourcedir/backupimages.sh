#!/bin/bash

# backupimages.sh [sourcedirectory backupdirectory]
# default values
sourcedirectory=backupsource
backupdirectory=backuptarget
# check directory and backupdir argumenten
if [[ $# -eq 2 ]] ; then
  sourcedirectory=$1
  backupdirectory=$2
fi

cd sourcedirectory
for imagefile in $(find -name "*.jpg" -o -name "*.jpeg" -o -name "*.png") ; do
  mkdir -p $backupdirectory/$(dirname $imagefile)
  cp $imagefile $backupdirectory
  echo "copied $imagefile to $backupdirectory"
done
cd -