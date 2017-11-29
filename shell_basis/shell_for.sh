#!/bin/bash

for i in `ls /home`
do
    echo $i
done

for (( i=0; i<10; i++ )); do
    echo $i
    sleep 0.2
done