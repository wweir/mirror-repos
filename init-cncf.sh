#!/usr/bin/env bash
set -ex

mkdir -p cncf
cd cncf

project=kubernetes
for repo in kubernetes.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  git remote update origin && git push mirror
done

project=opencontainers
for repo in runc.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  git remote update origin && git push mirror
done

project=containerd
for repo in containerd.git; do
  git clone --mirror git@github.com:$project/$repo
  cd $repo
  git remote add mirror git@e.coding.net:wweir/$project/$repo
  git remote update origin && git push mirror
done
