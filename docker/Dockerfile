FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    protobuf-compiler \
    python3 \
    python3-msgpack \
    python3-pip \
    python3-protobuf \
    python3-yaml

# Required for nanopb to work unfortunately
RUN ln -s /usr/bin/python3 /usr/bin/python

ADD aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz /

RUN /aarch64-buildroot-linux-gnu_sdk-buildroot/relocate-sdk.sh
