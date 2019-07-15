#!/usr/bin/env bash

currentSlot=`(helm get values --all bluegreen | awk '/productionSlot:/ {print $2}')`
if [ "$currentSlot" == "blue" ]; then
    newSlot="green"
else
    newSlot="blue"
fi

echo $newSlot
