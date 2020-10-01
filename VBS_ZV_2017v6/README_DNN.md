- To import the sample list in the correct json format use (to run it a cmsenv in the Latino folder is needed):

python unfold_sample.py -i .samples.py -o samples_v1.json -s Wjets DY top VZ VVV VBS_VV_QCD VBS_VV_EW


For this step we need a clean cmsenv area, so log out and log in again without prompting "cmsenv".
- To perform the Nunpy extraction (for a single specific signal region):

source /cvmfs/sft.cern.ch/lcg/views/LCG_96bpython3/x86_64-centos7-gcc8-opt/setup.sh

python latinoRDF_numpy_exporter.py  --config-dir ./VBS_ZV_2017v6  --cut dummy  --outputdir ./VBS_ZV_2017v6  --vers v1  --samples WJets DY top VZ VVV VBS_VV_QCD VBS_VV_EW  --debug




NB.Davide committed a new version of the DNN machinery that keeps into account also negative weights from MCs. Think about pulling it at some point....

