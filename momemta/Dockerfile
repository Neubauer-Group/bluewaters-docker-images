ARG BASE_IMAGE=neubauergroup/momemta-python-centos:1.0.1
FROM ${BASE_IMAGE} as base

RUN lhapdf get CT10nlo && \
    lhapdf get NNPDF23_lo_as_0130_qed
