FROM teamsprint/hive:2.3

MAINTAINER Jooho Kim

USER root

# Build with --build-arg DRUID_TAR=<DRUID_TAR>
# ex> docker build -t teamsprint/druid:0.9.1 --build-arg DRUID_TAR=`ls druid-*.tar.gz` .
  
ARG DRUID_TAR

RUN mkdir /servers
ADD $DRUID_TAR /servers
RUN cd servers; ln -s `ls | grep druid-` druid; cd ..

ENV DRUID_HOME /servers/druid

ADD Dockerfile /
ADD README.md /

RUN mkdir $DRUID_HOME/var/tmp

CMD ["/bin/bash"]

# Druid ports
EXPOSE 2181 8081 8082 8083 8090 8091

