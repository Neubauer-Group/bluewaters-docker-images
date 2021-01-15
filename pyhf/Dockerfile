FROM centos:7

RUN yum update -y && \
    yum install -y \
        python3

RUN python3 -m pip install --upgrade pip setuptools wheel && \
    python3 -m pip install pyhf[xmlio,contrib]

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
