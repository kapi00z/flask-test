#!/bin/sh

curl -s --output /dev/null docker:3000
result=$?

if [[ $result -eq "0" ]]
then
    echo success
else
    echo failed
fi