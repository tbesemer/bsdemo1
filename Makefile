.PHONY: all
all: bsdemo1

.PHONY: bsdemo1
bsdemo1: bsdemo1.c
	${CC} -o bsdemo1 bsdemo1.c

.PHONY: clean
clean:
	rm -f bsdemo1
