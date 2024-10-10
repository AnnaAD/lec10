all: usesum

usesum.o:
	as -g  usesum.s -o usesum.o

sumit.o:
	as -g sumit.s -o sumit.o

usesum: sumit.o usesum.o
	ld -g usesum.o sumit.o -o usesum

clean:
	rm -rf *.o
	rm usesum
