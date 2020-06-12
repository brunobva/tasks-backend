#BACKEND 

FROM tomcat:8.5-slim

COPY ./target/tasks-backend.war /usr/local/tomcat/webapps/tasks-backend.war

CMD ["catalina.sh", "run"]