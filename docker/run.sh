#!/bin/bash

mkdir -p ./volumes/sdk

docker run --privileged \
	-v "$(pwd)"/volumes/sdk:/scripts/sdk \
	--name macos_sdk_container \
	macos_sdk &>> log
