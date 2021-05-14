#!/bin/bash

filename=~/Downloads/owners.txt

lines=$(cat $filename)

for line in $lines
    do
    sed -n 1p ~/Downloads/dashboards_missing.csv > ~/Downloads/export_by_owner/$line.csv
    grep $line ~/Downloads/dashboards_missing.csv >> ~/Downloads/export_by_owner/$line.csv
done
