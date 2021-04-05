#!/usr/bin/env sh

# Abort on errors

set -e

# build
yarn run build

# navigate to output

cd dist

git init

git add -A

git commit -m 'deploy'

git push -f git@github.com:somekindofpanem/somekindofpanem.git master:gh-pages

cd -