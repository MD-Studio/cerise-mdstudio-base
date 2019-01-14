cwlVersion: v1.0

class: CommandLineTool
baseCommand: $CERISE_PROJECT_FILES/energies/call_getenergies.sh
arguments: ["$CERISE_PROJECT_FILES"]
stdout: getEnergy.out
stderr: getEnergy.err

inputs:
  edr:
    type: File
    inputBinding:
      position: 1
      prefix: -edr

outputs:
  energy_dataframe:
    type: File
    outputBinding: { glob: "energy.ene" }
  energyout:
    type: File
    outputBinding: { glob: getEnergy.out }
  energyerr:
    type: File
    outputBinding: { glob: getEnergy.err }   
