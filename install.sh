#!/bin/bash

chknorm(){
	if [ "$(id -u)" = "0" ]; then
	  echo "E: Must run as a normal user not root."
	  exit 1
	fi
}

clean(){
    tmpdir=$1
    rm -rf "$tmpdir" &&
    echo "Cleaned '$tmpdir'" ||
    echo "E: Failed to clean '$tmpdir'"
}

chknorm

tmpdir=$(mktemp -d)
trap "clean '$tmpdir'" EXIT ABORT
cd "$tmpdir"
wget https://raw.githubusercontent.com/neurobin/pkgbuilds/master/pac-get/PKGBUILD
makepkg -i
