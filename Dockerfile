FROM quitequiet/tomcat:8.5

ENV CATALINA_HOME /opt/tomcat
ENV S3_ROOT_WAR_URL https://s3-us-west-2.amazonaws.com/rorlovskyi-broadleaf-wars/broadleaf/ROOT.war

#ADD ${S3_ROOT_WAR_URL} ${CATALINA_HOME}/webapps/
COPY site/target/ROOT.war ${CATALINA_HOME}/webapps/
