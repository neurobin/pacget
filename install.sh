#!/bin/sh

chkroot(){
	if [ "$(id -u)" != "0" ]; then
	  err_out "root access required."
	  exit 1
	fi
}

chkroot

chmod +x pac-get
cp pac-get /usr/bin/
cp pac-get.8 /usr/share/man/man8/
