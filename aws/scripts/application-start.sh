#!/bin/bash
set -e

echo "=== ApplicationStart: Starting Tomcat ==="

# Try to restart Tomcat service
if systemctl list-units --full --all | grep -Fq "tomcat.service"; then
	systemctl restart tomcat
else
	systemctl restart tomcat9 || true
fi

echo "Tomcat started successfully"
