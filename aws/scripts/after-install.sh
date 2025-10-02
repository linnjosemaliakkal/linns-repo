#!/bin/bash
set -e

WAR_FILE=spring-boot-hello-world-example-1.0-SNAPSHOT.war
TOMCAT_HOME=/usr/share/tomcat/webapps

echo "=== AfterInstall: Deploying WAR ==="

# Ensure Tomcat webapps folder exists
mkdir -p $TOMCAT_HOME

# Copy WAR file from CodeDeploy staging (/tmp) to Tomcat
cp /tmp/$WAR_FILE $TOMCAT_HOME/

echo "WAR copied to $TOMCAT_HOME"
