#!/bin/bash
set -e

S3_BUCKET=codedeploystack-webappdeploymentbucket-awyh8dg2trdb
WAR_FILE=SpringBootHelloWorldExampleApplication.war
TOMCAT_HOME=/usr/local/tomcat9/webapps

echo "=== AfterInstall: Copying WAR from S3 to Tomcat ==="

aws s3 cp s3://$S3_BUCKET/$WAR_FILE $TOMCAT_HOME/$WAR_FILE

echo "WAR deployed to $TOMCAT_HOME"
