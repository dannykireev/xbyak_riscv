PREFIX?=/usr/local
INSTALL_DIR=$(PREFIX)/include/xbyak_riscv

all:
#	$(MAKE) -C sample

clean:
	$(MAKE) -C sample clean
	$(MAKE) -C test clean

install:
	mkdir -p $(INSTALL_DIR)
	cp -pR xbyak_riscv/*.h $(INSTALL_DIR)

uninstall:
	rm -i $(INSTALL_DIR)/*.h
	rmdir $(INSTALL_DIR)

update:
	$(MAKE) -C gen

test:
	$(MAKE) clean
	$(MAKE) -C gen
	$(MAKE) -C test test

test_svc:
	$(MAKE) -C test test_svc

.PHONY: test update
