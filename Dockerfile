# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "K-TechService" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps

apiVersion: v1
kind: Pod
metadata:
 name: multicontainerpod
spec:
 containers:
   - name: c1
     image: httpd
     ports:
       - containerPort: 80
   - name: c2
     image: redis
     ports:
       - containerPort: 6379
