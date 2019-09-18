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

run build.sh

# Start a container

run run.sh

The container name is "druid". If you don't want, just edit the scripts.

# Attach a container

run attach.sh

# Destroy containers (

run destroy.sh

# IMPORTANT: After attach you might to want to to:
./hadoop-start.sh   (Mandatory)
./hadoop-test.sh
./start-mysql.sh
./init-pw.sh (MySQL setup)
./init-db.sh (Hive metastore setup)

cd $DRUID_HOME
./start-single.sh   (Mandatory)

# Test





