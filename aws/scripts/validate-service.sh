#!/bin/bash
set -e

echo "=== ValidateService: Checking app health ==="

curl -f http://localhost:8080/SpringBootHelloWorldExampleApplication || exit 1

echo "Validation passed - application is running"
