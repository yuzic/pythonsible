FROM python:3.8.3

ENV PYTHON_VER=python3.8
ENV VIRTUAL_ENV=/opt/venv
ENV ANSIBLE_STRATEGY_PLUGINS="$VIRTUAL_ENV/lib/$PYTHON_VER/site-packages/ansible_mitogen/plugins/strategy"
ENV ANSIBLE_STRATEGY=mitogen_linear
ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get install -y \
#     ansible \
    openssh-client \
    libssl-dev \
    bzip2 \
    gzip \
    git \
    tar \
&& rm -rf /var/lib/apt/lists/* \
&& pip3 --no-cache-dir install --upgrade pip \
&& pip3 --no-cache-dir install \
    mitogen \
    ansible==2.7.7 \
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
