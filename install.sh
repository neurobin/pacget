#!/bin/sh

chkroot(){
	if [ "$(id -u)" != "0" ]; then
	  echo "root access required." >&2
	  exit 1
	fi
}

chkroot

chmod +x pac-get
cp pac-get /usr/bin/
cp pac-get.8 /usr/share/man/man8/
