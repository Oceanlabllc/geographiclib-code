# The order here is significant
JS_MODULES=Math Geodesic GeodesicLine PolygonArea DMS
JSSCRIPTS = $(patsubst %,GeographicLib/%.js,$(JS_MODULES))

SCRIPTDRIVERSIN = $(wildcard geod-*.in)
SCRIPTDRIVERS = $(patsubst %.in,%.html,$(SCRIPTDRIVERSIN))

all: geographiclib.js $(SCRIPTDRIVERS)

%.html: %.in
	cp $^ $@

geographiclib.js: HEADER.js $(JSSCRIPTS)
	./js-compress.sh $^ > $@

clean:
	rm -f geographiclib.js *.html

PREFIX = /usr/local
DEST = $(PREFIX)/share/doc/GeographicLib/scripts
INSTALL = install -b

install: all
	test -d $(DEST) || mkdir -p $(DEST)
	$(INSTALL) -m 644 $(SCRIPTDRIVERS) geographiclib.js $(DEST)/

.PHONY: install clean