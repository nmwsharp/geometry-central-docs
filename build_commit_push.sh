#!/bin/sh

# this makes us stop on error
set -e

# update the underlying lib
echo "updating underlying geometry-central"
cd geometry-central
git pull origin master
cd ../
echo "committing updated version"
git add geometry-central
git commit -m "pull new version" | true # | true returns 0 even if there is no change, so we continue

# rebuild docs
echo "rebuilding docs"
python3 -m mkdocs build --config-file geometry-central/docs/mkdocs.yml --site-dir ../../docs
echo "committing updated docs"
git add docs/
git commit -m "rebuild" | true # | true returns 0 even if there is no change, so we continue

# push the result
echo "push"
git push
