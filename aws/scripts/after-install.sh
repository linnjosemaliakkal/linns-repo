#!/bin/bash
set -e

WAR_FILE=spring-boot-hello-world-example-1.0-SNAPSHOT.war
TOMCAT_HOME=/usr/share/tomcat/webapps

echo "=== AfterInstall: Deploying WAR ==="
mkdir -p $TOMCAT_HOME

if [ ! -f /tmp/$WAR_FILE ]; then
    echo "ERROR: WAR file not found in /tmp/"
    exit 1
fi

cp /tmp/$WAR_FILE $TOMCAT_HOME/
echo "WAR copied successfully to $TOMCAT_HOME"
