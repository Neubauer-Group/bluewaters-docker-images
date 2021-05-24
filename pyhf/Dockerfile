ARG BASE_IMAGE=neubauergroup/centos-python3:3.8.10
FROM ${BASE_IMAGE} as base

ARG PYHF_RELEASE=0.6.1
RUN python3 -m pip --no-cache-dir install --upgrade pip setuptools wheel && \
    python3 -m pip --no-cache-dir install "pyhf[xmlio,contrib]==${PYHF_RELEASE}" && \
    python3 -m pip --no-cache-dir install "funcx-endpoint>=0.2.3" && \
    python3 -m pip list

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
