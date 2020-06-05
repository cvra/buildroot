# Docker image for cross compiling CVRA software

This folder contains the Dockerfile to build a docker image containing the CVRA's SDK.
It is useful to avoid having to build the whole repository, and to be able to cross compile from a mac laptop.

## How to use

First, you must compile the buildroot SDK (`make sdk`).
Then, you can run the following commands:

```

cp ../output/images/aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz .
docker build -t antoinealb/cvra-sdk:latest .
docker push antoinealb/cvra-sdk:latest
```

Eventually replacing `antoinealb` with your own Github username.
