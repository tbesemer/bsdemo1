ifeq ($(DESTDIR),)
DESTDIR := .
undefine PREFIX
endif

.PHONY: all
all: bsdemo1

.PHONY: bsdemo1
bsdemo1: bsdemo1.c
	${CC} -Wall -o $@ $<

.PHONY:
install:
	install -d ${DESTDIR}${PREFIX}/bin
	install -m 755 bsdemo1 ${DESTDIR}${PREFIX}/bin

.PHONY: clean
clean:
	rm -f bsdemo1
	rm -f ${DESTDIR}${PREFIX}/bin/bsdemo1
