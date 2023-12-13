#!/usr/bin/env bash
set -ex

mkdir -p zpm
cd zpm
WORK_DIR=$(pwd)

project=zpm-zsh
for repo in zpm.git core-config.git helpers.git zsh-completions.git fast-syntax-highlighting.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  cd $WORK_DIR
done

project=tj
for repo in git-extras.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  cd $WORK_DIR
done

project=agkozak
for repo in zsh-z.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  cd $WORK_DIR
done

project=miekg
for repo in lean.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  cd $WORK_DIR
done
