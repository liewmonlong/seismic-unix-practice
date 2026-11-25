#!/bin/bash
# Day 4: basic SU flow on synthetic data
set -e
mkdir -p output
suplane > output/data.su
sugethw < output/data.su key=tracl,ns,dt output=geom | head -5 > output/headers.txt
sufilter < output/data.su f=5,10,40,50 > output/bandpass.su
sugain < output/data.su tpow=2 > output/gain_tpow2.su
sugain < output/data.su agc=1 wagc=0.1 > output/gain_agc.su
echo "Done. Outputs are in ./output"
