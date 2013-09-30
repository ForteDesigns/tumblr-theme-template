#
# Tumblr theme template
#
# Makefile
#

CSSDIR = css
LESSDIR = less
HTMLDIR = html
OUTDIR = out

css = style.css
out = theme.html
layout = layout.html

CSS = $(addprefix $(CSSDIR)/, $(css))
OUT = $(addprefix $(OUTDIR)/, $(out))
LAYOUT = $(addprefix $(HTMLDIR)/, $(layout))
HTML = $(shell find -type f -name "*.html" -not -path "./$(OUT)")

.PHONY: all clean
all: $(OUT)

$(CSSDIR)/%.css: $(LESSDIR)/%.less $(CSSDIR)
	lessc -x $< > $@

$(OUT): $(CSS) $(HTML) $(OUTDIR)
	gpp -o $@ -H \
		-I $(HTMLDIR) \
		-I $(CSSDIR) \
		$(LAYOUT)

$(CSSDIR) $(OUTDIR):
	mkdir -p $@

clean:
	$(RM) -r $(CSSDIR) $(OUTDIR)
