#!/bin/bash

mkdir -p ./volumes/sdk

docker run --privileged \
	-v "$(pwd)"/volumes/sdk:/scripts/sdk \
	--name docker_macos_sdk_container \
	docker_macos_sdk &>> log
