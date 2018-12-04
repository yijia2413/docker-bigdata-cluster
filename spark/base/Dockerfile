FROM bigdata-baseimg:0.2

LABEL Description="This is a base image for Spark Nodes" \
      Author="Pavan Keerthi <pavan.keerthi@gmail.com>"

ADD spark*-bin-hadoop*.tgz /opt
RUN mv /opt/spark* /opt/spark && ls /opt/spark

ENV SPARK_HOME=/opt/spark
ENV PATH $SPARK_HOME/bin:$PATH

COPY hive-site.xml $SPARK_HOME/conf/
COPY core-site.xml $SPARK_HOME/conf/
COPY yarn-site.xml $SPARK_HOME/conf/

ENV HADOOP_CONF_DIR=$SPARK_HOME/conf

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENV PYSPARK_PYTHON=python3.6
ENV PYTHONHASHSEED 1

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
