#!/usr/bin/env bash
set -ex

mkdir -p zpm-zsh
cd zpm-zsh

git clone --mirror https://github.com/zpm-zsh/zpm.git
cd zpm.git
git remote add mirror git@e.coding.net:wweir/zpm-zsh/zpm.git
