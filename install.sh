#!/bin/bash
REPO=~/.kiss/ol-packages

git clone https://github.com/yuriy-chumak/ol-packages $REPO
chmod +x $REPO/kiss

echo "# ol-packages repo setup" >>~/.bashrc
export KISS_PATH=$KISS_PATH:$REPO
echo "export KISS_PATH=$KISS_PATH:$REPO" >>~/.bashrc
export PATH=$PATH:$REPO
echo "export PATH=\$PATH:$REPO" >>~/.bashrc

kiss update
