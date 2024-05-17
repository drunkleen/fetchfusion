PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install fetchfusion.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p fetchfusion $(DESTDIR)$(PREFIX)/bin/fetchfusion
	@cp -p fetchfusion.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/fetchfusion

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/fetchfusion
	@rm -rf $(DESTDIR)$(MANDIR)/man1/fetchfusion.1*
