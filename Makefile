# BJC - Better Java Compile
# # See LICENSE file for copyright and license details
SHELL = /bin/sh
PREFIX = $(DESTDIR)/usr/local
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(PREFIX)/bin
	cp -f BJC $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/BJC
	mkdir -p $(MANPREFIX)/man1
	cp -f BJC.1 $(MANPREFIX)/man1/BJC.1
	chmod 644 $(MANPREFIX)/man1/BJC.1
	@echo Please read the README file and/or manpage before using to avoid possible confusion!

uninstall:
	rm -f $(PREFIX)/bin/BJC
	rm -f $(MANPREFIX)/man1/BJC.1
