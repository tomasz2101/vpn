# FROM ubuntu:xenial

# RUN apt-get update 
# RUN apt-get install -y curl
# RUN curl -L -o /tmp/zerotier-install.sh https://install.zerotier.com/ && bash /tmp/zerotier-install.sh || exit 0
FROM alpine
RUN apk add --update alpine-sdk linux-headers
WORKDIR /build
RUN rm -rf dist/*
RUN curl -s https://codeload.github.com/zerotier/ZeroTierOne/zip/1.2.4 -o zerotier-src.zip
RUN unzip -q zerotier-src.zip
WORKDIR /build/ZeroTierOne-1.2.4
RUN make -f make-linux.mk
RUN DESTDIR=/build/dist make -f make-linux.mk install

