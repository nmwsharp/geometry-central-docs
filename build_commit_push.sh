#!/bin/sh
cd geometry-central
git pull origin v1
cd ../
git add geometry-central
git commit -m "pull new version"
python3 -m mkdocs build --config-file geometry-central/docs/mkdocs.yml --site-dir ../../docs
git add docs/
git commit -m "rebuild"
git push
