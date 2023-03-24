#!/bin/bash

set -xe

export WLD=$HOME/wld
meson subprojects download


(cd subprojects/wayland-1.20.0 && meson setup build -Dlibraries=false -Dtests=false -Ddtd_validation=false --prefix=$WLD/host_dep && ninja -C build install)
export PKG_CONFIG_PATH=$WLD/host_dep/lib/x86_64-linux-gnu/pkgconfig

meson setup build --prefix=$WLD --cross-file aarch64-linux-gnu.txt -Dwayland:documentation=false
ninja -C build && ninja -C build install
