#!/bin/bash

set -ex

CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
TARS_DIR="${CUR_DIR}/tars"
mkdir -p ${TARS_DIR}

HADOOP_VERSION=3.1.1
HADOOP_URL="https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz"
wget ${HADOOP_URL} -O ${TARS_DIR}/$(basename ${HADOOP_URL})

HIVE_VERSION=2.3.4
HIVE_URL="http://mirror.bit.edu.cn/apache/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz"
wget ${HIVE_URL} -O ${TARS_DIR}/$(basename ${HIVE_URL})

KAFKA_VERSION=2.1.0
SCALA_VERSION=2.12
KAFKA_URL="http://mirrors.tuna.tsinghua.edu.cn/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz"
wget ${KAFKA_URL} -O ${TARS_DIR}/$(basename ${KAFKA_URL})

SPARK_VERSION=2.4.0
PREBUILD_HADOOP_VERSION=2.7
SPARK_URL="http://mirror.bit.edu.cn/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${PREBUILD_HADOOP_VERSION}.tgz"
wget ${SPARK_URL} -O ${TARS_DIR}/$(basename ${SPARK_URL})

# move to build inside docker
mv ${TARS_DIR}/$(basename ${HADOOP_URL}) ../hadoop/base
mv ${TARS_DIR}/$(basename ${HIVE_URL}) ../hive/base
mv ${TARS_DIR}/$(basename ${KAFKA_URL}) ../kafka
mv ${TARS_DIR}/$(basename ${SPARK_URL}) ../spark/base

