#!/bin/sh
name=snow-workers
cd ~/$name
git --work-tree=./app --git-dir=./repo checkout -f
cd app
npm install
sudo stop $name
sudo start $name
