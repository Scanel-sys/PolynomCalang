CC = gcc

BUILDDIR = build
SRCDIR = src
TARGET = PolyCalc

all: clean build

build:
	mkdir -pv $(BUILDDIR)
	$(MAKE) -C $(SRCDIR) build
	mv $(SRCDIR)/$(TARGET) $(BUILDDIR)/

clean:
	$(MAKE) -C $(SRCDIR) clean
	rm -rf  $(BUILDDIR)
