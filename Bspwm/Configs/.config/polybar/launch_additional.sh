#!/bin/bash

killall -q polybar
echo "---" | tee -a /tmp/polybar_additional.log                  
polybar additional >>/tmp/polybar_additional.log 
