CC=gcc
CFLAGS= -O2 -g -c

libre.so:	re.c
	$(CC) $(CFLAGS) re.c -o libre.so

install:
	install -m 644 libre.so /usr/lib/libre.so
	install -m 644 re.h /usr/include/re.h

uninstall:
	rm /usr/lib/libre.so
	rm /usr/include/re.h

clean:
	rm -f *.o *.so
