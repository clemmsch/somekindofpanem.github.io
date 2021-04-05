#!/usr/bin/env sh

# Abort on errors

set -e

# build
yarn build

# navigate to output

cd dist

git config --global user.email "panemlp@gmx.net"

git config  --global user.anem "somekindofpanem"

git init

git add -A

git commit -m 'deploy'

git push -f git@github.com:somekindofpanem/somekindofpanem.git master:gh-pages

cd -