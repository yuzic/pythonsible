FROM python:3.7

ENV PYTHON_VER=3.7
ENV ANSIBLE_VER=2.7.7

ENV VIRTUAL_ENV=/opt/venv
# ENV ANSIBLE_STRATEGY_PLUGINS="$VIRTUAL_ENV/lib/python$PYTHON_VER/site-packages/ansible_mitogen/plugins/strategy"
# ENV ANSIBLE_STRATEGY=mitogen_linear
ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get install -y \
    openssh-client \
    libssl-dev \
    bzip2 \
    gzip \
    git \
    tar \
&& rm -rf /var/lib/apt/lists/* \
&& pip --no-cache-dir install --upgrade pip \
&& pip --no-cache-dir install \
    ansible==$ANSIBLE_VER \
#     mitogen \
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
