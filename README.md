# Druid for Metatron Docker image

teamsprint/druid:0.9.1

# Based on (in a row)

teamsprint/centos:7<br/>
teamsprint/jdk:8<br/>
teamsprint/hadoop:2.7.3<br/>
teamsprint/mysql:5.7<br/>
teamsprint/hive:2.3<br/>

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

./init-mysql.sh (Optional)<br/>
./start-mysql.sh (Optional; already started by init-mysql.sh)<br/>
./conn-mysql.sh (Optional)<br/>
./stop-mysql.sh (Optional)<br/>

./init-hive-metastore.sh (Optional)<br/>
./start-hive.sh (Optional)<br/>
./conn-hive.sh (Optional)<br/>
./stop-hive.sh (Optional)<br/>

cd $DRUID_HOME<br/>
./start-single.sh<br/>
./stop-single.sh<br/>

# Test
# When you run by run.sh, Overlord is at localhost:18090
# You can see other ports in run.sh

