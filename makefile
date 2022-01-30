GC = gc-8.0.4
TARFILE = $(GC).tar.gz

all:
	sudo mkdir -p /opt/clasp-support
	sudo chown -R $(USER) /opt/clasp-support
	make get
	make build


build:
	(cd ./$(GC); ./configure --prefix=/opt/clasp-support --disable-parallel-mark --enable-threads=pthreads --enable-large-config --enable-handle-fork=yes --enable-static=yes)
	make -C $(GC) -f Makefile install

get:
	wget https://www.hboehm.info/gc/gc_source/$(TARFILE)
	tar xvf $(TARFILE)


clean:
	rm -rf $(GC)* *~
