# Paths
DESTDIR :=
PREFIX := /usr/local

DATAROOTDIR = $(PREFIX)/share
DATADIR = $(DATAROOTDIR)/fgallery
BINDIR = $(PREFIX)/bin
MANDIR = $(DATAROOTDIR)/man
MAN1DIR = $(DATAROOTDIR)/man/man1
DOCDIR = $(DATAROOTDIR)/doc/fgallery
APPDIR = $(DATAROOTDIR)/applications

# Rules
.PHONY: install install_fcaption
install:
	install -d $(DESTDIR)$(BINDIR)
	install -p -t $(DESTDIR)$(BINDIR) fgallery

	install -d $(DESTDIR)$(DATADIR)
	cp -L -R view $(DESTDIR)$(DATADIR)

	install -d $(DESTDIR)$(MAN1DIR)
	install -p -t $(DESTDIR)$(MAN1DIR) fgallery.1

	install -d $(DESTDIR)$(DOCDIR)
	install -p -t $(DESTDIR)$(DOCDIR) NEWS.rst README.rst COPYING.txt
	
install_fcaption:
	install -d $(DESTDIR)$(BINDIR)
	install -p -t $(DESTDIR)$(BINDIR) utils/fcaption

	install -d $(DESTDIR)$(APPDIR)
	install -p -t $(DESTDIR)$(APPDIR) utils/fcaption.desktop
