#!/bin/bash

# CERISE_PROJECT_FILES="$1"

wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $CERISE_PROJECT_FILES/miniconda
conda config --set always_yes yes --set changeps1 no --set auto_update_conda False

# Create python3 environment
# NOTE: was ./${CERISE_API_FILES}, huh?
${CERISE_PROJECT_FILES}/miniconda/bin/conda create --yes --name cerise python=3.6

source $CERISE_PROJECT_FILES/miniconda/bin/activate root
conda clean --index-cache
pip install numpy
pip install pandas
pip install panedr==0.4.0
