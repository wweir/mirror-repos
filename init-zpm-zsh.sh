#!/usr/bin/env bash
set -ex

mkdir -p zpm-zsh
cd zpm-zsh

project=zpm-zsh
for repo in zpm.git core-config.git helpers.git zsh-completions.git fast-syntax-highlighting.git; do
  git clone --mirror https://github.com/$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  git remote update origin && git push mirror
done
