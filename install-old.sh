#!/bin/bash

WORKDIR=/home/$(whoami)/.cache/SDG-PKG/sdg-util-scripts

cp -r $WORKDIR/local/* /home/$(whoami)/.local

cp -r $WORKDIR/docs/SDG-DOC-* /home/$(whoami)/.local/docs/

mkdir -p /home/$(whoami)/.local/tips/SDG-UTIL-SCRIPTS
cp -r $WORKDIR/tips/* /home/$(whoami)/.local/tips/SDG-UTIL-SCRIPTS
