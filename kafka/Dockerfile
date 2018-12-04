FROM bigdata-baseimg:0.2

LABEL Description="This is a image for kafka nodes" \
      Author="Pavan Keerthi <pavan.keerthi@gmail.com>"

ADD kafka*.tgz /opt
RUN mv /opt/kafka* /opt/kafka && ls /opt/kafka

ENV KAFKA_HOME /opt/kafka

ADD start-kafka.sh /usr/bin/start-kafka.sh
RUN chmod +x /usr/bin/start-kafka.sh

EXPOSE 9092

HEALTHCHECK --start-period=10s CMD netstat -tuplen | grep 9092 || exit 1

ENTRYPOINT ["/usr/bin/start-kafka.sh"]
