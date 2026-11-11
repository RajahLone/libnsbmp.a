
CROSSPREFIX=/opt/cross-mint/bin/m68k-atari-mint-
PATH = /opt/cross-mint/m68k-atari-mint/bin:/opt/cross-mint/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
LD_LIBRARY_PATH=/opt/cross-mint/lib:/opt/cross-mint/m68k-atari-mint/lib:$LD_LIBRARY_PATH
DESTDIR=/opt/cross-mint/m68k-atari-mint

CC = $(CROSSPREFIX)gcc
AS = $(CC)
AR = $(CROSSPREFIX)ar
RANLIB = $(CROSSPREFIX)ranlib
STRIP = $(CROSSPREFIX)strip
FLAGS = $(CROSSPREFIX)flags

CFLAGS = -I../include -I./utils/log.g -W

OFLAGS = -Wall -O2 -fomit-frame-pointer -DNDEBUG

OBJS = libnsbmp.c

libnsbmp.a:
	mkdir -p ../lib
	mkdir -p ../lib/m68020-60
	mkdir -p ../lib/m5475

	$(CC) $(CFLAGS) -m68000 $(OFLAGS) -c $(OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libnsbmp.a $(DESTDIR)/lib/libnsbmp.a
	cp libnsbmp.a ../lib/libnsbmp.a
	rm -f *.o libnsbmp.a
	$(CC) $(CFLAGS) -m68020-60 $(OFLAGS) -c $(OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libnsbmp.a $(DESTDIR)/lib/m68020-60/libnsbmp.a
	cp libnsbmp.a ../lib/m68020-60/libnsbmp.a
	rm -f *.o libnsbmp.a
	$(CC) $(CFLAGS) -mcpu=5475 $(OFLAGS) -c $(OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libnsbmp.a $(DESTDIR)/lib/m5475/libnsbmp.a
	cp libnsbmp.a ../lib/m5475/libnsbmp.a
	rm -f *.o libnsbmp.a

clean:
	rm -f ../lib/libnsbmp.a
	rm -f ../lib/m68020-60/libnsbmp.a
	rm -f ../lib/m5475/libnsbmp.a
	rm -f *.o libnsbmp.a
