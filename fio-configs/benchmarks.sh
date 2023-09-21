#!/bin/bash
if [ ! -d "results" ]; then
	mkdir -p "results"
fi

# Check if argument is provided
if [ $# -ne 1 ]; then
	echo "Usage: $0 <argument>"
	exit 1
fi

if [ "$1" = "device" ]; then
	sudo fio device-configs.fio | grep -f grep_filter > results/device.test
elif [ "$1" = "fs" ] ; then
	sudo fio filesystem-configs.fio | grep -f grep_filter > results/filesystem.test
elif [ "$1" = "longhorn" ] ; then
	sudo fio longhorn-configs.fio | grep -f grep_filter > results/longhorn.test
else
	echo "Invalid argument: $1"
	exit 1
fi

