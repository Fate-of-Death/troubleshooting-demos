#!/bin/bash
BuildVersion="17.2"
K=`uname -sr`
echo "Environment is: $K"

if [[ $version != $BuildVersion ]]; then
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "[ERROR] Version must be $BuildVersion - Got version $version"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	exit 1
else
	echo "Version is compatible - Exiting cleanly..."
	exit 0
fi
