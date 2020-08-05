# Copyright (c) 2020 Jim Tyhurst. 
# Distributed under the terms of the Modified BSD License.
#
# This image is based on a Jupyter-managed image:
#   https://hub.docker.com/r/jupyter/tensorflow-notebook/dockerfile
# which is copyright by Jupyter Development Team.
#
# I added a few more libraries in this Dockerfile that I need
# for some deep learning applications.
FROM jupyter/tensorflow-notebook:1a66dd36ff82

LABEL maintainer="Jim Tyhurst <jim@tyhurst.com>"

RUN pip install \
    'plotnine==0.7.1' \
    'simpletransformers==0.46.6' \
    && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
