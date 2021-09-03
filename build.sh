#!/bin/bash
# This script will build the project.
set -e

if find src/main/proto | grep \\.proto | xargs -n1 protoc -I src/main/proto -o /dev/null | grep warning; then
  echo "Warnings found, exiting"
  exit 1
fi

./gradlew build --stacktrace
