#!/bin/bash
until who | grep greenmind
do
    sleep 10
done
echo $(date "+ Em %d/%m às %H:%Mh") > relapso.log
