#!/bin/bash

while true; do
    command -v rgbkeys && pamixer --get-volume | awk '{print $1}' | rgbkeys
    sleep 0.33
done
