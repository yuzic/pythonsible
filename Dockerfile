FROM centos:7

RUN yum update -y
RUN yum install yum-utils
RUN yum -y install \
    bzip2 \
    file \
    gzip \
    libffi=3.2.1-r4 \
    libffi-dev=3.2.1-r4 \
    krb5 \
    krb5-dev \
    krb5-libs \
    musl-dev=1.1.19-r10 \
    openssh \
    openssl-dev \
    python2-dev=2.7.15-r1 \
    py-cffi=1.10.0-r0 \
    py-cryptography=2.1.4-r1 \
    py2-pip=10.0.1-r0 \
    py-setuptools=39.1.0-r0 \
    py2-yaml=3.12-r1 \
    sshpass \
    git \
    tar
RUN yum -y install \
    gcc=6.4.0-r9 \
    make=4.2.1-r2 \
 && pip install --upgrade pip==18.0 \
 && pip install \ 
    ansible==2.7.6 \
    botocore==1.12.86 \
    boto==2.49.0 \
    boto3==1.9.86 \
    awscli==1.16.96 \
    pywinrm[kerberos]==0.3.0 \
    requests \
    google-auth \
 && yum remove gcc make
RUN yum -y install centos-release-scl-rh
RUN yum -y install rh-python38
SHELL ["scl", "enable", "rh-python38"]
RUN python -V
RUN pip install virtualenv
