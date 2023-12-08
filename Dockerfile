FROM openjdk:8         
VOLUME /tmp                   
ADD target/vprofile-v2.war vprofile-v2.war
# Expose the port that your application will run on
EXPOSE 8080
ENV DB_URL=jdbc:mysql://localhost:3306/accounts?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull
ENV DB_USERNAME=newuser
ENV DB_PASSWORD=password
# Specify the command to run on container startup
ENTRYPOINT ["java","-war","/vprofile-v2.war"]
