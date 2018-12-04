#!/bin/bash

set -ex

mkdir -p /data1/dockervolumes/postgres/pgdata
mkdir -p /data1/dockervolumes/redis/data
mkdir -p /data1/dockervolumes/airflow/dags
mkdir -p /data1/dockervolumes/airflow/logs
mkdir -p /data1/dockervolumes/hadoop/nn
mkdir -p /data1/dockervolumes/spark/master/logs
mkdir -p /data1/dockervolumes/yarn/hs
mkdir -p /data2/dockervolumes/hadoop/dn1 /data2/dockervolumes/hadoop/dn2 /data2/dockervolumes/hadoop/dn3
mkdir -p /data2/dockervolumes/spark/worker1/logs /data2/dockervolumes/spark/worker2/logs /data2/dockervolumes/spark/worker3/logs
mkdir -p /data1/dockervolumes/zookeeper/zknode1/data /data1/dockervolumes/zookeeper/zknode2/data /data1/dockervolumes/zookeeper/zknode3/data
mkdir -p /data1/dockervolumes/zookeeper/zknode1/log /data1/dockervolumes/zookeeper/zknode2/log /data1/dockervolumes/zookeeper/zknode3/log
chown root -R /data1/dockervolumes /data2/dockervolumes
chmod 777 -R /data1/dockervolumes /data2/dockervolumes
