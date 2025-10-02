#!/bin/bash
set -e

S3_BUCKET=codedeploystack-webappdeploymentbucket-seqdgxfeq2qg
WAR_FILE=spring-boot-hello-world-example-1.0-SNAPSHOT.war
TOMCAT_HOME=/usr/share/tomcat/webapps


echo "=== AfterInstall: Copying WAR to Tomcat webapps ==="

# Ensure tomcat directory exists
if [ ! -d "$TOMCAT_HOME" ]; then
	echo "Tomcat directory $TOMCAT_HOME does not exist. Creating it."
	mkdir -p "$TOMCAT_HOME" || { echo "Failed to create Tomcat directory $TOMCAT_HOME"; exit 1; }
fi

# Check if WAR file exists
if [ ! -f "/tmp/$WAR_FILE" ]; then
	echo "WAR file /tmp/$WAR_FILE does not exist! Deployment cannot continue."
	exit 1
fi

# Copy WAR from /tmp (where CodeDeploy placed it) to Tomcat
cp "/tmp/$WAR_FILE" "$TOMCAT_HOME/" || { echo "Failed to copy WAR file to $TOMCAT_HOME"; exit 1; }

echo "WAR copied to $TOMCAT_HOME"
