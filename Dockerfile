FROM openjdk:11

RUN curl https://archive.apache.org/dist/kafka/2.3.0/kafka_2.11-2.3.0.tgz --output kafka_2.11-2.3.0.tgz
RUN tar -xzf kafka_2.11-2.3.0.tgz
WORKDIR kafka_2.11-2.3.0
RUN echo ' ' >> config/server.properties
RUN echo 'log.retention.minutes=2' >> config/server.properties
RUN echo 'message.max.bytes=52428800' >> config/server.properties
#RUN sed -i 's/zookeeper.connect=localhost:2181/zookeeper.connect=zookeeper:2181/g' config/server.properties
