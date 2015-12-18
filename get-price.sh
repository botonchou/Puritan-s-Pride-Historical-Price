#!/bin/bash
if [ "$1" == "" ]; then
  echo "Usage: $0 item-id"
  exit -1
fi
  
ID=$1
curl -sSLA Mozilla "http://search.puritan.com/search?w=$ID" | grep "[1-9]* for \$[.0-9]*" -o
