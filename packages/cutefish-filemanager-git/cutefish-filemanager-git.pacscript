name="cutefish-filemanager-git"
gives="cutefish-filemanager"
version="0.3-1"
url="https://github.com/cutefishos/filemanager.git"
license="GPL-3.0"
build_depends="extra-cmake-modules ninja-build qttools5-dev-tools qtbase5-dev qtdeclarative5-dev qtquickcontrols2-5-dev qttools5-dev"
depends="fishui libcutefish kio libkf5solid-dev"
description="Cutefish File Manager, simple to use, beautiful, and retain the classic PC interactive design."

pkgver() {
    git ls-remote "${url}" main | cut -f1 | cut -c1-8
}
version="$(pkgver)"

prepare() {
    mkdir build
    cd build
}

build() {
    cmake ..
    make -j$(nproc)
}

install() {
    sudo make install DESTDIR=/usr/src/pacstall/cutefish-filemanager-git
}
