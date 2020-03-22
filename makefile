GC = gc-8.0.4
TARFILE = $(GC).tar.gz

all:
	sudo mkdir -p /opt/clasp-support
	sudo chown -R $(USER) /opt/clasp-support
	(cd ./$(GC); ./configure --prefix=/opt/clasp-support --disable-parallel-mark --enable-threads=pthreads --enable-large-config --enable-handle-fork=yes)
	make -C $(GC) -f makefile install

get:
	wget https://www.hboehm.info/gc/gc_source/$(TARFILE)
	tar xvf $(TARFILE)
