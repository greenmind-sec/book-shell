#!/bin/bash
for ip in $(seq 1 254)
do
  echo "192.168.0.$ip"
done
