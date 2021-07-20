#!/bin/bash
for i in $(find -maxdepth 1 -mindepth 1 -type d); do
    pushd $i
    rm -rf build
    cmake -S . -B build
    cmake --build build -- -j
    read # waits on user input to move on to the next example
    popd
done
