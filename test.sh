#!/bin/sh

sleep 3

curl -s --output /dev/null docker:3000
result=$?

curl -s --output /dev/null docker:3000

if [[ $result -eq "0" ]]
then
    echo success
else
    echo failed
fi