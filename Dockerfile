FROM centos:latest
#FROM gcr.io/sym-global-images/symphony-es/base-java8:latest

LABEL test 'carvalho-test'
RUN yum -y install deltarpm
RUN yum -y install java-1.8.0-openjdk
RUN mkdir -p /opt/symphony/
WORKDIR /opt/symphony/

COPY . ingestor-1.0-SNAPSHOT.jar /opt/symphony/


EXPOSE 8080

#CMD ["java", "-Xmx64m", "-Xms64m", "-jar", "gs-spring-boot-0.1.0.jar"]