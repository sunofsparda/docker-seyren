#!/bin/sh
set -o errexit

if [ -z ${GRAPHITE_URL} ]
   then
       if [ $# -ne 1 ]
       then
           echo "Usage: run-seyren.sh GRAPHITE_URL"
       fi
       export GRAPHITE_URL=$1
fi

echo "Graphite URL $GRAPHITE_URL"
echo "Mongo URL $MONGO_URL"

env

java -jar /opt/seyren.jar
