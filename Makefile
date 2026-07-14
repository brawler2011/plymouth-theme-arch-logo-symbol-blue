PREFIX := /usr
DESTDIR :=
THEME := arch-logo-symbol-blue
PKG := plymouth-theme-$(THEME)

.PHONY: install
install:
	install -Dvm0644 *.grub *.plymouth *.png -t \
		$(DESTDIR)$(PREFIX)/share/plymouth/themes/$(THEME)
	install -Dvm0644 README.md -t \
		$(DESTDIR)$(PREFIX)/share/doc/$(PKG)
	install -Dvm0644 LICENSE* -t \
		$(DESTDIR)$(PREFIX)/share/licenses/$(PKG)
