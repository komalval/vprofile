FROM tomcat
COPY /target/vprofile-v2.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
