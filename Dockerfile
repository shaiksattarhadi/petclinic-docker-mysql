FROM tomcat 
EXPOSE 9999 
COPY target/petclinic.war /usr/local/tomcat/webapps/
