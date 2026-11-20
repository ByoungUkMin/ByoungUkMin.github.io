#!/bin/sh
# Sync this site to the Purdue CS homes directory (https://www.cs.purdue.edu/homes/min87/).
cd "$(dirname "$0")" && rsync -av --delete --exclude .git --exclude .nojekyll --exclude README.md --exclude deploy-purdue.sh ./ antor:~/.www/ && ssh antor 'chmod -R a+rX ~/.www'
