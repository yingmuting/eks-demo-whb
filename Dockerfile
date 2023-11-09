FROM amazonlinux:2

RUN yum install -y awscli

RUN yum install -y java-1.8.0-openjdk
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java", "-Xms1024m", "-Xmx1024m", "-jar", "/app.jar"]