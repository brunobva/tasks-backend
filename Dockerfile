#BACKEND 

FROM tomcat:8.5-slim

COPY ./target/tasks-backend.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]