
FROM tomcat: 8-jre8

ADD webapp/target/webapp.war  /usr/local/tomcat/webapps

EXPOSE 8181



