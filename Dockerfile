FROM centos:7

RUN yum update -y
RUN yum -y install centos-release-scl-rh
RUN yum -y install rh-python38-python
RUN python3 -V
RUN yum -y install rh-python38-python-pip

RUN pip3 install ansible
RUN pip3 install virtualenv
