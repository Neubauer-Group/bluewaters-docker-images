ARG BASE_IMAGE=scailfin/madgraph5-amc-nlo-centos:mg5_amc3.1.1
FROM ${BASE_IMAGE} as base

RUN echo "exit" | mg5_aMC && \
    lhapdf get NNPDF23_lo_as_0130_qed
