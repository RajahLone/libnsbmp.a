
DESTDIR=/opt/cross-mint/m68k-atari-mint

all:
	cd src && $(MAKE) libnsbmp.a && cd ..
	cp -r include/*.h $(DESTDIR)/include

clean:
	cd src && $(MAKE) clean && cd ..
