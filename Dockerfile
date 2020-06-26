FROM centos:7

RUN yum update -y
RUN yum -y install centos-release-scl-rh
RUN yum -y install rh-python38
RUN scl enable rh-python38 bash && python3.8 -V

RUN pip3.8 install ansible
RUN pip3.8 install virtualenv
