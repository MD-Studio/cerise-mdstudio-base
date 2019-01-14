# Base specialisation for cerise-mdstudio

This repository contains a collection of files and scripts that will be useful
in almost all cases of making a specialisation for cerise-mdstudio. It is built
into Docker image mdstudio/cerise-mdstudio-base:<version>.

## Making a specialisation based on this image

To make a Cerise specialisation of the mdstudio project for machine mymachine,
create a Docker image cerise-mdstudio-mymachine, starting from
cerise-mdstudio-base, and adding the following files (paths relative to
/home/cerise):

### api/mdstudio/files/gmxrc

This file sets up the environment for running Gromacs. Note that it is not
Gromacs' own gmxrc, but a cerise-mdstudio specific one. It should:

- Load any modules needed to run Gromacs
- Define the GMXRC_MDSTUDIO environment variable, containing the path to
  Gromacs' GMXRC.bash

### api/mdstudio/install.sh

This is the Cerise installation script. If you have it call
$CERISE_PROJECT_FILES/install_base.sh, miniconda will be installed at
$CERISE_PROJECT_FILES/miniconda, a Conda environment will be set up inside of
it, and the necessary dependencies for running getEnergies.py will be installed.

The mdstudio/energies.cwl and mdstudio/decompose.cwl steps depend on this to
work.

### api/config.yml

This is the Cerise machine configuration file, in which you specify how to
connect to the machine, and how to run jobs on it. You can use api/config.yml in
this repository as a starting point for yours.

## Legal

This software is Copyright 2017-2018, VU University Amsterdam and Netherlands
eScience Center.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
