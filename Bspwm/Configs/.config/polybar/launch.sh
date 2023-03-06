#!/bin/bash

killall -q polybar
echo "---" | tee -a /tmp/polybar_base.log
polybar base >>/tmp/polybar_base.log