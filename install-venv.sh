#!/bin/bash
REPO=~/.kiss/ol-packages

PWD=`pwd`
mkdir -p $REPO
cd $REPO

curl -fsSL https://github.com/yuriy-chumak/ol-packages/archive/refs/tags/0.3.tar.gz| tar -xz --strip-components=1
chmod +x $REPO/kiss # sanity chmod

echo "# ol-packages repo setup (venv)" >>~/.bashrc
export KISS_PATH=$KISS_PATH:$REPO
echo "export KISS_PATH=$KISS_PATH:$REPO" >>~/.bashrc
export PATH=$PATH:$REPO
echo "export PATH=\$PATH:$REPO" >>~/.bashrc

cd $PWD
