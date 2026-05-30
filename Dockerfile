FROM ubuntu
LABEL maintainer="swapnil123@gmail.com"
RUN apt update && apt install default-jdk -y 
WORKDIR /opt
ADD apache-tomcat-9.0.115.tar.gz .  
COPY Netflix/target/*.war /opt/apache-tomcat-9.0.115/webapps/
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.115/bin/catalina.sh", "run"]
