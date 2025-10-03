#!/bin/bash
set -xe

# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-avyh8dg2trdb/spring-boot-hello-world-example-1.0-SNAPSHOT.war /usr/local/tomcat9/webapps/spring-boot-hello-world-example-1.0-SNAPSHOT.war

# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps
