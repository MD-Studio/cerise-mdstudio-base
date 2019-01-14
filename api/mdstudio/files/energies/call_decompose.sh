#!/bin/bash

CERISE_PROJECT_FILES="$1"

# remove the CERISE_PROJECT_FILES from the input array
shift

# load GMXRC_MDSTUDIO PATH
. $CERISE_PROJECT_FILES/gmxrc

# Activate environment
source $CERISE_PROJECT_FILES/miniconda/bin/activate root

# Call script
$CERISE_PROJECT_FILES/miniconda/bin/python2.7 $CERISE_PROJECT_FILES/energies/getEnergies.py decompose -gmxrc $GMXRC_MDSTUDIO -o decompose.ene $*
