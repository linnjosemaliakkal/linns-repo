#!/bin/bash
set -e

S3_BUCKET=codedeploystack-webappdeploymentbucket-seqdgxfeq2qg
WAR_FILE=spring-boot-hello-world-example-1.0-SNAPSHOT.war
TOMCAT_HOME=/usr/share/tomcat/webapps


echo "=== AfterInstall: Copying WAR to Tomcat webapps ==="

# Optionally copy WAR from S3 if needed
# aws s3 cp s3://codedeploystack-webappdeploymentbucket-seqdgxefq2qg/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war

# Ensure tomcat directory exists
mkdir -p $TOMCAT_HOME

# Copy WAR from /tmp (where CodeDeploy placed it) to Tomcat
cp /tmp/$WAR_FILE $TOMCAT_HOME/

echo "WAR copied to $TOMCAT_HOME"
