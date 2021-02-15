#!/bin/bash

# Initiate a db downgrade -- backup the data first!!
docker run -v ./validator:/data gcr.io/prysmaticlabs/prysm/validator:stable db migrate down --data-dir=/data
