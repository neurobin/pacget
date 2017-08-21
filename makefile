
install:
	chmod +x pac-get
	install -m 755 -d "$(DESTDIR)/usr/bin/" "$(DESTDIR)/usr/share/man/man8/"
	install -m 755 pac-get $(DESTDIR)/usr/bin/
	install -m 644 pac-get.8 $(DESTDIR)/usr/share/man/man8/
