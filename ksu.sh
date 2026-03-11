#!/usr/bin/env bash

[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/rsuntk/KernelSU KernelSU && 
cd KernelSU && git branch v3.0.0-30-legacy && 
cd ../

if [[ $BUILD_SUSFS == 'true' && $BUILD_KERNEL_KSU == 'true' ]]; then
    cd KernelSU && git checkout next-susfs && cd ../
    patch -p1 < susfs.patch
fi
