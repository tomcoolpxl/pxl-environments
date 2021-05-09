#!/bin/bash
# vul de default waarden al in
directory=.
extension=.txt
# filecount.sh [directory] [extensie]
# als 1 argument (directory)
if [[ $# -eq 1 ]] ; then
  directory=$1
# als 2 argumenten (directory, extensie)
elif  [[ $# -eq 2 ]] ; then
  directory=$1
  extension=$2
fi
# met 1 regel: aantal=$(ls *$extension | wc -l)
let aantal=0
for filenaam in *$extension; do
  let aantal=aantal+1
done
echo -e "$aantal bestand(en) met de extensie $extension"
