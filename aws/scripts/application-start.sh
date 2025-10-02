#!/bin/bash
<<<<<<< HEAD
set -xe

# Start Tomcat, the application server.
service tomcat start
=======
set -e

echo "=== Starting Tomcat service ==="
systemctl start tomcat || systemctl restart tomcat
>>>>>>> 9981c63 (Add all untracked files and update tracked files)
