#!/bin/bash

# Get timestamp
date=`date +"%Y%m%d%H%M%S"`

# Generate model with timestamp
touch $date
cat $date >> data
mv data model_$date
