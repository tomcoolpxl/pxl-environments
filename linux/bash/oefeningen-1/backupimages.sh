#!/bin/bash

# backupimages.sh [sourcedirectory backupdirectory]
# default values
sourcedirectory=./sourcedir
backupdirectory=./targetdir
# check directory en backupdir argumenten
if [[ $# -eq 2 ]] ; then
  sourcedirectory=$1
  backupdirectory=$2
fi

# loop over alle files met find
for imagefile in $(find $sourcedirectory -name "*.jpg" -o -name "*.jpeg" -o -name "*.png") ; do
  # knip het pad van de filenaam en maak de directory structuur
  mkdir -p $backupdirectory/$(dirname $imagefile)
  # copieer de file met full source path
  cp --parents $imagefile $backupdirectory
  echo -e "copied $imagefile to $backupdirectory"
done