
FROM ubuntu

RUN mkdir /opt/tomcat/
RUN apt-get update -y && apt-get install -y curl
WORKDIR /opt/tomcat
RUN curl -O  https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
RUN tar xzvf apache-tomcat-9.0.30.tar.gz
RUN mv apache-tomcat-9.0.30/* /opt/tomcat/.
RUN apt-get -y install default-jre
RUN java -version

WORKDIR /opt/tomcat/webapps

ADD webapp.war  /opt/tomcat/webapps/

EXPOSE 8181

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

