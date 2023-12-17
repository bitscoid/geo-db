#!/bin/bash

set -e -o pipefail

cd sing-geosite/rule-set-geosite
git init
git config --local user.email "github-action@users.noreply.github.com"
git config --local user.name "GitHub Action"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/bitscoid/geo-db.git
git branch -M rule-set-geosite
git add .
git commit -m "Update rule-set-geosite"
git push -f origin rule-set-geosite
