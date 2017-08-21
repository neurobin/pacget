#!/bin/bash

chknorm(){
	if [ "$(id -u)" = "0" ]; then
	  echo "E: Must run as a normal user not root."
	  exit 1
	fi
}

chkcmd(){
    if command -v "$1" >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

err_exit(){
    printf "E: $*\n" >&2
    exit 1
}

clean(){
    tmpdir=$1
    rm -rf "$tmpdir" &&
    echo "Cleaned '$tmpdir'" ||
    echo "E: Failed to clean '$tmpdir'"
}

chknorm

tmpdir=$(mktemp -d)
trap "clean '$tmpdir'" EXIT 2
cd "$tmpdir"

if ! chkcmd sudo; then
    err_exit "Please install and setup 'sudo' for your user."
fi

if ! chkcmd pacaur; then
    echo "*** Installing pacaur ..."
    mkdir -p pacaur
    cd pacaur

    # Install dependencies
    sudo pacman -Sy base-devel expac yajl git  --noconfirm || err_exit "Failed to install dependency"

    # Install "cower" from AUR
    PATH=$PATH:/usr/bin/core_perl
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
    makepkg PKGBUILD --skippgpcheck
    sudo pacman -U cower*.tar.xz --noconfirm || err_exit "Failed to install cower"

    # Install "pacaur" from AUR
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg PKGBUILD
    sudo pacman -U pacaur*.tar.xz --noconfirm || err_exit "Failed to install pacaur"

    # Clean up...
    cd ..
    rm -rf pacaur
fi

# Install pacget
wget https://raw.githubusercontent.com/neurobin/pkgbuilds/master/pacget/PKGBUILD
makepkg -i || err_exit "Failed to install pacget"
