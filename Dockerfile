FROM tomcat:8.0-alpine 
WORKDIR webapps 
COPY target/demo-0.0.1-SNAPSHOT.war .
RUN rm -rf ROOT && mv demo-0.0.1-SNAPSHOT.war ROOT.war
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
