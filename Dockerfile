FROM tomcat:9.0-jdk11
COPY ./target/productcrudapp.war /usr/local/tomcat/webapps/productcrudapp.war