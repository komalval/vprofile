FROM tomcat
WORKDIR /app
COPY */target/vprofile-v2.war  /opt/tomcat/webapps/
CMD ["catalina.sh","run"]
EXPOSE 8010
