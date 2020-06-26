FROM centos:7

RUN yum update -y
RUN yum -y install centos-release-scl-rh
RUN yum -y install rh-python38
SHELL ["scl", "enable", "rh-python38"]
RUN python -V
RUN pip install ansible
RUN pip install virtualenv
