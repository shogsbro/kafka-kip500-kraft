FROM alpine:3.12

RUN apk add --no-cache openjdk8-jre bash curl \
  && mkdir -p /opt \
  && curl -k "https://downloads.apache.org/kafka/3.0.0/kafka_2.13-3.0.0.tgz" | tar -xzf - -C /opt \
  && mv /opt/kafka_2.13-3.0.0 /opt/kafka \
  && adduser -DH -s /sbin/nologin kafka \
  && chown -R kafka: /opt/kafka \
  && rm -rf /tmp/*

ENV PATH /sbin:/opt/kafka/bin/:$PATH

USER kafka
WORKDIR /opt/kafka

RUN clusterID=`kafka-storage.sh random-uuid` \
  && ./bin/kafka-storage.sh format -t $clusterID -c ./config/kraft/server.properties

CMD ["kafka-server-start.sh", "config/kraft/server.properties"]
