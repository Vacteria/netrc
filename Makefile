#!/usr/bin/make -f

DESTDIR =
LSBDIR  = /lib/init
SBIN    = /sbin
PART    = /etc/wpa_supplicant.conf.d
STATE   = /var/run/netrc

install :
	for dir in $(LSBDIR) $(SBIN) $(PART) $(STATE); do\
		install -d -m 0755 $(DESTDIR)/$$dir; \
	done

	install -m 0755 sbin/* $(DESTDIR)/$(SBIN)
	install -m 0644 init/* $(DESTDIR)/$(LSBDIR)

