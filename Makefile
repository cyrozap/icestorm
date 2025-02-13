
all:
	$(MAKE) -C icebox
	$(MAKE) -C icepack
	$(MAKE) -C iceprog

clean:
	$(MAKE) -C icebox clean
	$(MAKE) -C icepack clean
	$(MAKE) -C iceprog clean

install:
	$(MAKE) -C icebox install
	$(MAKE) -C icepack install
	$(MAKE) -C iceprog install

uninstall:
	$(MAKE) -C icebox uninstall
	$(MAKE) -C icepack uninstall
	$(MAKE) -C iceprog uninstall

.PHONY: all clean install uninstall

