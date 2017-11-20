FROM tomcat:8.0.47-jre8
EXPOSE 8080
COPY ./target/*.war ${CATALINA_HOME}/webapps/
#COPY ./server.xml ${CATALINA_HOME}/conf/server.xml
CMD ["catalina.sh", "run"]
