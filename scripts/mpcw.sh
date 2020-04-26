#!/bin/bash
watch -t -n 1 'mpc status -f "[[%artist%][\n%album%][\n%title%]|[\n%file%]]"'
