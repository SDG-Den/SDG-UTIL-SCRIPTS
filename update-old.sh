#!/bin/bash

WORKDIR=/home/$(whoami)/.cache/SDG-PKG/sdg-util-scripts

rm -rf /home/$(whoami)/.local/SDG-HELP
rm -rf /home/$(whoami)/.local/SDG-UTILS
cp -r $WORKDIR/local/* /home/$(whoami)/.local

rm -rf /home/$(whoami)/.local/docs/SDG-DOC-GETTING-STARTED
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-DESKTOP-USAGE
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-TERMINAL
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-CUSTOMIZATION
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-DEVELOPMENT
cp -r $WORKDIR/docs/SDG-DOC-* /home/$(whoami)/.local/docs/

rm -rf /home/$(whoami)/.local/tips/SDG-UTIL-SCRIPTS
mkdir -p /home/$(whoami)/.local/tips/SDG-UTIL-SCRIPTS
cp -r $WORKDIR/tips/* /home/$(whoami)/.local/tips/SDG-UTIL-SCRIPTS
