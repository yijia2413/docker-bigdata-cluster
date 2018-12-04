FROM  bigdata-baseimg:0.2

LABEL Description="This is a base image for Hadoop Cluster Nodes" \
      Author="Pavan Keerthi <pavan.keerthi@gmail.com>"

ADD hadoop*.tar.gz /opt
RUN mv /opt/hadoop* /opt/hadoop && ls /opt/hadoop

RUN ln -sf /opt/hadoop/etc/hadoop /etc/hadoop
# RUN cp /etc/hadoop/mapred-site.xml.template /etc/hadoop/mapred-site.xml

RUN mkdir /opt/hadoop/logs
RUN mkdir /hadoop-data

ENV HADOOP_PREFIX=/opt/hadoop
ENV HADOOP_CONF_DIR=/etc/hadoop
ENV MULTIHOMED_NETWORK=1
ENV USER=root
ENV PATH $HADOOP_PREFIX/bin/:$PATH

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
