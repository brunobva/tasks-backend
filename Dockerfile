#BACKEND 

FROM tomcat:8.5-slim

COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

CMD ["catalina.sh", "run"]