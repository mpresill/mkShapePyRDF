#!/bin/bash
source /cvmfs/sft.cern.ch/lcg/views/LCG_96bpython3/x86_64-centos7-gcc8-opt/setup.sh
# python latinoRDF_numpy_exporter.py --config Full2018v6s5_v2 \
#     --cut boost_sig --ver v11 -o /eos/user/d/dvalsecc/www/VBSPlots/DNN_archive \
#     -s VVV Wjets VBS DY VBF-V top VV \
#     --debug --functions functions.hh



#python latinoRDF_numpy_exporter.py --config Full2017v6s5_v2 \
#    --cut res_sig --ver v11 -o /eos/user/d/dvalsecc/www/VBSPlots/DNN_archive \
#    -s VVV Wjets VBS DY VBF-V top VV \
#    --debug --functions functions.hh


#python latinoRDF_numpy_exporter.py --config Full2017v6s5_v2 \
#    --cut boost_sig --ver v11 -o /eos/user/d/dvalsecc/www/VBSPlots/DNN_archive \
#    -s VVV Wjets VBS DY VBF-V top VV \
#    --debug --functions functions.hh

python latinoRDF_numpy_exporter.py --config VBS_ZV_2017v6 \
    --cut dummy --ver v1 -o VBS_ZV_2017v6 \
    -s WJets \
    --debug
