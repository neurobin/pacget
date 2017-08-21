
install:
	chmod +x pacget
	install -m 755 -d "$(DESTDIR)/usr/bin/" "$(DESTDIR)/usr/share/man/man8/"
	install -m 755 pacget $(DESTDIR)/usr/bin/
	install -m 644 pacget.8 $(DESTDIR)/usr/share/man/man8/
