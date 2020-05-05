#!/bin/bash

apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       openjdk-8-jdk\
       net-tools\
       curl\
      netcat\
       gnupg
       
export HADOOP_VERSION=3.2.1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export HADOOP_HOME=/opt/hadoop-$HADOOP_VERSION
export HADOOP_CONF_DIR=/etc/hadoop
export PATH=$HADOOP_HOME/bin/:$PATH

curl -fSL  https://www.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz -o /tmp/hadoop.tar.gz
tar -xf /tmp/hadoop.tar.gz -C /opt/
rm /tmp/hadoop.tar.gz*
ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
mkdir /opt/hadoop-$HADOOP_VERSION/logs 
cp /tmp/execute/core-site.xml /etc/hadoop/
cp /tmp/execute/hdfs-site.xml /etc/hadoop/
mkdir /hadoop-data
$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode -format test
$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR namenode &
$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR datanode &




