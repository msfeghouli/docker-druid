# Druid for Metatron Docker image

teamsprint/druid:0.9.1

[![DockerPulls](https://img.shields.io/docker/pulls/teamsprint/docker-druid.svg)](https://registry.hub.docker.com/u/teamsprint/docker-druid/)
[![DockerStars](https://img.shields.io/docker/stars/teamsprint/docker-druid.svg)](https://registry.hub.docker.com/u/teamsprint/docker-druid/)

# Based on (in a row)

teamsprint/centos:7
teamsprint/jdk:8
teamsprint/hadoop:2.7.3
teamsprint/mysql:5.7
teamsprint/hive:2.3

# Build the image

Copy the druid binary into the build directory (Dockerfile, build.sh, etc.)

run build.sh

You can give the druid binary as an argument, but it's not recommended.

# Start a container

run run.sh

The container name is "druid". If you don't want, just edit the scripts.

# Attach a container

run attach.sh

# Destroy containers

run destroy.sh

# IMPORTANT: After attach you might to want to to:
./start-hadoop.sh (HDFS & Yarn)<br/>
./test-hadoop.sh (Optional)<br/>

./init-mysql.sh (MySQL setting)<br/>

./start-mysql.sh (optional)<br/>
./conn-mysql.sh (Optional)<br/>

./init-hive-metastore.sh<br/>
./start-hive.sh<br/>

cd $DRUID_HOME<br/>
./start-single.sh<br/>

# Test
# When you run by run.sh, Overlord is at localhost:18090
# You can see other ports in run.sh

