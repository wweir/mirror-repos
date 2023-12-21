#!/usr/bin/env bash
set -ex

mkdir -p cncf
cd cncf
WORK_DIR=$(pwd)
ENDPOINT=https://e.coding.net/wweir

project=kubernetes
for repo in kubernetes.git; do
  git clone --mirror https://github.com/$project/$repo
  cd $repo
  git remote add mirror $ENDPOINT/$project/$repo
  cd $WORK_DIR
done

project=opencontainers
for repo in runc.git; do
  git clone --mirror https://github.com/$project/$repo
  cd $repo
  git remote add mirror $ENDPOINT/$project/$repo
  cd $WORK_DIR
done

project=containerd
for repo in containerd.git; do
  git clone --mirror https://github.com/$project/$repo
  cd $repo
  git remote add mirror $ENDPOINT/$project/$repo
  cd $WORK_DIR
done
