.PHONY: clean all
DISTDIR=dist
ZIPFILE=interrobang.zip

IMG_NAMES=icon_16.png icon_48.png
SOURCE_NAMES=inject.js manifest.json popup.html popup.js

OBJECTS=$(addprefix $(DISTDIR)/, $(SOURCE_NAMES))
OBJECTS+=$(addprefix $(DISTDIR)/, $(IMG_NAMES))

all: $(ZIPFILE)

$(DISTDIR):
	mkdir $@

$(ZIPFILE): $(DISTDIR)/LICENSE.txt $(OBJECTS) | $(DISTDIR)
	zip $@ $(DISTDIR)/*

$(DISTDIR)/%.png: images/%.png | $(DISTDIR)
	cp $< $@

$(DISTDIR)/%.js: source/%.js | $(DISTDIR)
	cp $< $@

$(DISTDIR)/%.json: source/%.json | $(DISTDIR)
	cp $< $@

$(DISTDIR)/%.html: source/%.html | $(DISTDIR)
	cp $< $@

$(DISTDIR)/%.txt: %.txt | $(DISTDIR)
	cp $< $@
clean:
	rm -rf $(DISTDIR)/* $(ZIPFILE)
