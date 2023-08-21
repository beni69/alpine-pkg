#!/bin/sh
set -e

build() {
    abuild -r
}

for d in beni/*; do
    echo "##[group] $(basename $d)"
    cd "$d"
    build
    echo "##[endgroup]"
done
