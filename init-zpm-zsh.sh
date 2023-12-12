#!/usr/bin/env bash

mkdir -p zpm-zsh
cd zpm-zsh

git clone --mirror git@github.com:zpm-zsh/zpm.git \
  && cd zpm.git \
  && git remote add mirror git@e.coding.net:wweir/zpm-zsh/zpm.git \
  && git remote show origin && git remote show mirror
