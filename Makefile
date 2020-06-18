# BJC - Better Java Compile
# # See LICENSE file for copyright and license details
SHELL = /bin/sh
PREFIX = $(DESTDIR)/usr/local
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(PREFIX)/bin
	cp -f BetterJavaCompile $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/BetterJavaCompile
	ln -s $(PREFIX)/bin/BetterJavaCompile BJC
	mkdir -p $(MANPREFIX)/man1
	cp -f BJC.1 $(MANPREFIX)/man1/BJC.1
	chmod 644 $(MANPREFIX)/man1/BJC.1
	ln -s $(MANPREFIX)man1/BetterJavaCompile.1
	@echo Please read the README file and/or manpage before using to avoid possible confusion!

uninstall:
	rm -f $(PREFIX)/bin/BJC
	rm -f $(PREFIX)/bin/BetterJavaCompile
	rm -f $(MANPREFIX)/man1/BJC.1
	rm -f $(MANPREFIX)/man1/BetterJavaCompile.1
