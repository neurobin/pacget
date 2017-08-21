
install:
	chmod +x pac-get
	install -m 755 pac-get $(DESTDIR)/usr/bin/
	install -m 644 pac-get.8 $(DESTDIR)/usr/share/man/man8/
