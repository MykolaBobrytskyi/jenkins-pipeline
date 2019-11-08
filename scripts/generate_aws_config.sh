#!/bin/bash

region=$1
aws_access_key_id=$2
aws_secret_access_key=$3

mkdir ./aws

cat << EOF >> ./aws/config
[default]
region = $region	
EOF

cat << EOF >> ./aws/credentials
[default]
aws_access_key_id = $aws_access_key_id
aws_secret_access_key = $aws_secret_access_key
EOF

chmod 600 ./aws/*
