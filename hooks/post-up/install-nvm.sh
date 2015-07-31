#!/bin/bash
set -e

if [ ! -d ~/.nvm ]; then
  echo "Installing nvm"
  git clone https://github.com/creationix/nvm.git ~/.nvm
fi
