# Use an official Tomcat image as the base image
FROM tomcat:latest

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY /webapp/target/webapp.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 9090

# Start Tomcat
CMD ["catalina.sh", "run"]
