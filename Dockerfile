# FROM alpine:3.12
FROM python:3.8.3

# RUN apk add --no-cache \
RUN apt-get update && apt-get install -y \
    ansible \
    openssh-client \
    libssl-dev \
    bzip2 \
    gzip \
    git \
    tar \
&& rm -rf /var/lib/apt/lists/* \
&& pip install virtualenv
