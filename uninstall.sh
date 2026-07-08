#!/bin/bash

rm -rf "$HOME/.local/SDG-HELP"
rm -rf "$HOME/.local/SDG-UTILS"
rm -rf "$HOME/.local/docs/SDG-DOC-GETTING-STARTED"
rm -rf "$HOME/.local/docs/SDG-DOC-DESKTOP-USAGE"
rm -rf "$HOME/.local/docs/SDG-DOC-TERMINAL"
rm -rf "$HOME/.local/docs/SDG-DOC-CUSTOMIZATION"
rm -rf "$HOME/.local/docs/SDG-DOC-DEVELOPMENT"
rm -rf "$HOME/.local/tips/SDG-UTIL-SCRIPTS"

unlink /usr/bin/sdg-tldr
unlink /usr/bin/git-projects