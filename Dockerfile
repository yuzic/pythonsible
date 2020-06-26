FROM centos:7

RUN yum update -y
RUN yum -y install centos-release-scl-rh
RUN yum -y install rh-python38-python
RUN python3.8 -V
RUN yum -y install rh-python38-python-pip

RUN pip3.8 install ansible
RUN pip3.8 install virtualenv
