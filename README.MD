# Docker image with Kafka Kraft (Kafka without Zookeeper)

Docker image with Kafka using Kraft instead of Zookeper.

Hub link: https://hub.docker.com/shogsbro/kafka-kip500-kraft

Run with

```
docker run --name kafka -d -p 9092:9092 oque/kafka-kip500-kraft:latest
```

Forked from https://github.com/oQue/kafka-kip500-kraft
