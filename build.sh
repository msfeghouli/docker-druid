#!/bin/bash

docker build -t teamsprint/druid:0.9.1 --build-arg DRUID_TAR=`ls druid-0.9.1-*.tar.gz` .

