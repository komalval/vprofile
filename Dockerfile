# Use an official Tomcat runtime as a parent image
FROM tomcat:9-jre11

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Set the working directory to /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container at /usr/local/tomcat/webapps
COPY  /target/vprofile-v2.war .

# Expose the port that your application will run on
EXPOSE 8080

# Specify the command to run on container startup
CMD ["catalina.sh", "run"]
