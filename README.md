
```
sudo apt-get install g++-aarch64-linux-gnu

meson subprojects download

(cd subprojects/wayland-1.20.0 && meson setup build -Dlibraries=false -Dtests=false -Ddtd_validation=false --prefix=$HOME/wld/host_dep && ninja -C build install)
export PKG_CONFIG_PATH=$HOME/wld/host_dep/lib/x86_64-linux-gnu/pkgconfig

meson setup build --prefix=$HOME/wld --cross-file aarch64-linux-gnu.txt -Dwayland:documentation=false
ninja -C build && ninja -C build install
```
