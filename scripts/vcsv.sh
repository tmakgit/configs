#!/bin/bash

cat $1 | sed 's/,/ ,/g' | column -s, -t | more -S 
