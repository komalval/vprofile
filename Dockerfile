# Use an official Tomcat runtime as a parent image
FROM tomcat:9-jre11

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Set the working directory to /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container at /usr/local/tomcat/webapps
COPY  /target/vprofile-v2.war /usr/local/tomacat/webapps

# Expose the port that your application will run on
EXPOSE 8080
ENV DB_URL=jdbc:mysql://localhost:3306/accounts?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull
ENV DB_USERNAME=newuser
ENV DB_PASSWORD=password
# Specify the command to run on container startup
CMD ["catalina.sh", "run"]
