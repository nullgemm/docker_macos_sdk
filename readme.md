# Docker macOS SDK
This repo contains scripts for building a Docker container used to generate
macOS cross-compilation toolchains easily with managed dependencies.

## Building the image
To build the image, open the `docker` folder and execute `build.sh path/to/sdk`.
This repo includes [instant_macos_sdk] as a submodule for downloading one from
Apple's softwareupdate servers without account requirements.

To use [instant_macos_sdk], run `git submodule init` and `git submodule update`.
Open the `sdk` folder and run `fetch.sh` followed by `unpkg.sh` to get the SDK.
Once your SDK is ready, open `../docker` and execute `build.sh ../sdk/sdk/root`.

## Building the SDK
The docker image now contains a copy of the original SDK from Apple, which
we need to package as a functional cross-compilation toolchain. For this,
the script in the container will use [osxcross]. Simply launch `run.sh`,
and find your ready-to-use toolchain in the `volumes/sdk` folder.

[instant_macos_sdk]: https://github.com/nullgemm/instant_macos_sdk
[osxcross]: https://github.com/tpoechtrager/osxcross
