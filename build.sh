#!/usr/bin/env bash
set -x -e

buildnumber=${4-$(date -u +"%y%m%d%H%M")}

docker build --no-cache -t "$1"/kudu:"$buildnumber" kudu
docker tag "$1"/kudu:"$buildnumber" "$1"/kudu:latest

#docker login -u "$2" -p "$3"

#docker push "$1"/kudu:"$buildnumber"
#docker push "$1"/kudu:latest

#docker logout
