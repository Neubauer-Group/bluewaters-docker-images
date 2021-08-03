#!/bin/bash

module load shifter

# pyhf
shifterimg pull neubauergroup/bluewaters-pyhf:0.6.2
# MadGraph5
shifterimg pull neubauergroup/bluewaters-mg5_amc:3.1.1
shifterimg pull neubauergroup/bluewaters-mg5_amc:latest
# MoMEMta
shifterimg pull neubauergroup/bluewaters-momemta:1.0.1
shifterimg pull neubauergroup/bluewaters-momemta:latest
# Delphes
shifterimg pull scailfin/delphes-python-centos:3.5.0
shifterimg pull scailfin/delphes-python-centos:latest
