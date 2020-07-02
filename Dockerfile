FROM python:3.8.3

RUN apt-get update && apt-get install -y \
    ansible \
    openssh-client \
    libssl-dev \
    bzip2 \
    gzip \
    git \
    tar \
&& rm -rf /var/lib/apt/lists/* \
&& pip install virtualenv \
&& virtualenv virtenv \
&& . virtenv/bin/activate \
&& pip install \
    pika==0.12.0 \
    pytest==5.3.5 \
    psycopg2-binary==2.8.4 \
    redis==3.4.1 \
    requests==2.23.0 \
    SQLAlchemy==1.3.13 \
    allure-pytest==2.8.16 \
    jira==2.0.0 \
    selenium==3.141.0 \
    webdriver-manager==2.3.0 \
    paramiko==2.7.1 \
    rfc3339==6.0 \
    pytest-rerunfailures==9.0 \
    grpcio==1.29.0 \
    grpcio-tools==1.29.0 \
    assertpy==1.0 \
    pypika==0.37.7

