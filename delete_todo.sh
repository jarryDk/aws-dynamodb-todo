#!/bin/bash

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Use ./delete_todo.sh <ENDPOINT> <UUID>"
    exit 0
else
    echo "Endpoint : $1"
    ENDPOINT=$1
    echo "UUID : $2"
    UUID=$2
fi

time curl -s -X DELETE $ENDPOINT/$UUID | jq