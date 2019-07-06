# geometry-central-docs
Hosted documentation for geometry-central.

The actual documentation content lives in the geometry-central repo, in the /docs subdirectory. This repo exists soley to host the github pages page, and pulls from that repo as a submodule.

To install mkdocs and theme:
```
pip install mkdocs mkdocs-material pygments
```

To build and deploy:
```
python3 -m mkdocs build --config-file geometry-central/docs/mkdocs.yml --site-dir ../../docs
git add docs/
git commit
git push
```
the gnomes will promptly get to work building the website, and content at geometry-central.net will update in a few minutes.
