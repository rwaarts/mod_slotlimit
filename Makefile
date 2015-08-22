# Makefile for mod_slotlimit.c (gmake)
APXS=$(shell which apxs || which apxs2)
APXS_OPTS=-Wc, -Wc,-DDST_CLASS=3

default: mod_slotlimit.o

mod_slotlimit.o: mod_slotlimit.c
	$(APXS) $(APXS_OPTS) -c -n mod_slotlimit.so mod_slotlimit.c

install: mod_slotlimit.o
	$(APXS) $(APXS_OPTS) -i -a -n slotlimit mod_slotlimit.la

clean:
	rm -rf *~ *.o *.so *.lo *.la *.slo .libs/ 
