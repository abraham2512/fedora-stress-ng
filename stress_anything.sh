#!/bin/bash

arguments=""

# Iterating through stress environment variables in the container
for var in $(env | cut -d'=' -f1 | grep '^stress_'); do
  key="$var"
  name=$(echo $var | sed 's/^stress_//')
  value="${!key}" 
  arguments+="--$name $value "
done
echo $arguments
stress $arguments