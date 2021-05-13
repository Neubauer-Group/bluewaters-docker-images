FROM centos:7

RUN yum update -y && \
    yum install -y \
        gcc \
        openssl-devel \
        bzip2-devel \
        libffi-devel \
        lzma-devel \
        curl \
        tar \
        make

ARG PYTHON_VERSION=3.8.8
WORKDIR /build
RUN curl -sLO "https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz" && \
    tar -xzf "Python-${PYTHON_VERSION}.tgz" && \
    cd "Python-${PYTHON_VERSION}" && \
    ./configure --help && \
    ./configure --prefix=/usr \
        --exec_prefix=/usr \
        --with-ensurepip \
        --enable-optimizations \
        --with-lto \
        --enable-ipv6 && \
    make -j"$(($(nproc) - 1))" && \
    make install && \
    printf "\nalias python='python3'\n" >> ~/.bashrc && \
    cd / && \
    rm -rf /build
WORKDIR /

ARG PYHF_RELEASE=0.6.1
RUN python3 -m pip install --upgrade pip setuptools wheel && \
    python3 -m pip install "pyhf[xmlio,contrib]==${PYHF_RELEASE}" && \
    python3 -m pip install funcx-endpoint && \
    python3 -m pip list

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
