#!/usr/bin/env bash

[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/rsuntk/KernelSU KernelSU && 
cd KernelSU && git branch v1.0.5-83-legacy && 
cd ../
