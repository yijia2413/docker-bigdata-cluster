FROM hadoop-base:0.2

LABEL Description="This is the base image for Hive Datawarehouse" \
      Author="Pavan Keerthi <pavan.keerthi@gmail.com>"


ADD apache-hive*.tar.gz /opt
RUN mv /opt/apache-hive* /opt/hive

ENV HIVE_HOME /opt/hive
ENV PATH $HIVE_HOME/bin:$PATH
ENV HADOOP_HOME /opt/hadoop

RUN ls $HIVE_HOME

WORKDIR /opt

#Install Hive and PostgreSQL JDBC
RUN apt-get update && apt-get install -y wget procps && \
	wget https://jdbc.postgresql.org/download/postgresql-42.1.4.jar -O $HIVE_HOME/lib/postgresql-jdbc.jar && \
	apt-get --purge remove -y wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


#Custom configuration goes here
ADD conf/hive-site.xml $HIVE_HOME/conf
ADD conf/beeline-log4j2.properties $HIVE_HOME/conf
ADD conf/hive-exec-log4j2.properties $HIVE_HOME/conf
ADD conf/hive-log4j2.properties $HIVE_HOME/conf
ADD conf/llap-daemon-log4j2.properties $HIVE_HOME/conf
ADD conf/ivysettings.xml $HIVE_HOME/conf
ADD conf/hive-env.sh $HIVE_HOME/conf

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
