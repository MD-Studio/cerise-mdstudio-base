#!/bin/bash

# Run cwltiny.py using the 'cerise' python 3.6 miniconda env
echo "Current directory: $PWD" 1>&2
. ../../../api/mdstudio/files/miniconda/etc/profile.d/conda.sh
conda activate cerise

python3.6 ../../../api/cerise/files/cwltiny.py $*

conda deactivate
