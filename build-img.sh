#!/bin/bash -ex

md5sum vmlinux.tmp > vmlinux.tmp.md5

wget "https://dl.ui.com/unifi/firmware/UGW4/$1/UGW4.v$1.tar"

wget https://raw.githubusercontent.com/sowbug/mkeosimg/master/mkeosimg
sed -i 's/cp \$DIR\//cp /g' mkeosimg
cat mkeosimg
ls -lR
chmod +x mkeosimg 
./mkeosimg "UGW4.v$1.tar"

