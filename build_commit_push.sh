#!/bin/sh

# this makes us stop on error
set -e

# update the underlying lib
cd geometry-central
git pull origin master
cd ../
git add geometry-central
git commit -m "pull new version"

# rebuild docs
python3 -m mkdocs build --config-file geometry-central/docs/mkdocs.yml --site-dir ../../docs
git add docs/
git commit -m "rebuild"

# push the result
git push
