FROM tomcat:jre17-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/app-boot-*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]