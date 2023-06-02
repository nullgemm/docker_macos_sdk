#!/bin/bash

# when using instant_macos_sdk, $1 == instant_macos_sdk/sdk/root
if [ -z $1 ]; then
	echo "please supply a path to the macOS SDK"
	exit
fi

mkdir -p ./scripts/pkg
sudo mount -o bind "$1" ./scripts/pkg
docker build -t macos_sdk .
sudo umount ./scripts/pkg
