#!/bin/bash

for id in $(cut -f 1 -d ',' list.txt); do
  paste <(echo $id) <(./get-price.sh $id)
done
