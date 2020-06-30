FROM alpine:3.12

RUN apk add --no-cache \
    ansible \
    openssh \
    openssl-dev \
    bzip2 \
    gzip \
    git \
    tar \
    py3-pip \
&& pip3 install virtualenv
