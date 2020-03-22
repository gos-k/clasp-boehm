

all:
	(cd ./gc-8.0.4; ./configure --prefix=/opt/clasp-support --disable-parallel-mark --enable-threads=pthreads --enable-large-config --enable-handle-fork=yes)
	mkdir -p /opt/clasp-support
	make -C gc-8.0.4 -f makefile install

get:
	wget https://www.hboehm.info/gc/gc_source/gc-8.0.4.tar.gz
