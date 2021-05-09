#!/bin/bash

# pingtest.sh textfile

# check textfile argument
if [[ $# -eq 1 ]] ; then
  textfile=$1
else
  echo "USAGE: $(basename $0) textfile"
  echo "missing parameter: textfile"
  exit 1
fi

while read -r regel; do
  echo -e "\n--- ping $regel ---"
  ping -c 3 $regel
done < "$textfile"
