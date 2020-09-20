#!/bin/bash -ex

md5sum vmlinux.tmp > vmlinux.tmp.md5

wget https://dl.ui.com/unifi/firmware/UGW4/4.4.51.5287926/UGW4.v4.4.51.5287926.tar

wget https://raw.githubusercontent.com/sowbug/mkeosimg/master/mkeosimg
sed -i 's/cp \$DIR\//cp /g' mkeosimg
chmod +x mkeosimg 
./mkeosimg UGW4.v4.4.51.5287926.tar

