#!/bin/sh

curl -s --output /dev/null localhost:3000
result=$?

if [[ $result -eq "0" ]]
then
    echo success
else
    echo failed
fi