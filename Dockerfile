FROM openjdk

WORKDIR /tng-analytics-engine
RUN cd /tng-analytics-engine
EXPOSE 8082
COPY /target/tng-analytics-engine-0.0.1-SNAPSHOT.jar  .

#ENV MONGO_DB localhost
#ENV PHYSIOG_URL localhost

ENV MONGO_DB son-mongo
ENV PHYSIOG_URL http://analyticserver



ENV MONITORING_ENGINE http://son-vnv-monitor-manager
ENV PROMETHEUS_URL http://son-monitor-prometheus


#ENV MONITORING_ENGINE http://pre-int-vnv-bcn.5gtango.eu:8000
#ENV PROMETHEUS_URL http://pre-int-vnv-bcn.5gtango.eu:9090




CMD ["java","-jar","tng-analytics-engine-0.0.1-SNAPSHOT.jar"]
