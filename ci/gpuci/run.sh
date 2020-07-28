#!/bin/bash
# Copyright (c) 2020, NVIDIA CORPORATION.
####################################
# ccache fork run script #
####################################
set -ex

export HOME=${WORKSPACE}
export PATH="/opt/conda/bin:$PATH"
source activate base
conda config --set ssl_verify false
conda install -k conda-build conda-verify anaconda-client
conda build -c conda-forge recipe
anaconda -t ${MY_UPLOAD_KEY} upload -u ${CONDA_USERNAME:-gpuci} --label main --skip-existing /opt/conda/conda-bld/linux-64/rapids-ccache*.tar.bz2