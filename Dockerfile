FROM tomcat:8.5.37-jre8
MAINTAINER nik@gmail.com
RUN apt-get update
ADD  target/nikLogin-1.0.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
