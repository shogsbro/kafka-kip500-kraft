# Docker image with Kafka Kraft (Kafka 3.0.0 preview feature without Zookeeper)

Docker image with Kafka in preview mode using Kraft instead of Zookeper.

Hub link: https://hub.docker.com/shogsbro/kafka-kip500-kraft

Run with

```
docker run --name kafka -d -p 9092:9092 oque/kafka-kip500-kraft:3.0.0
```
