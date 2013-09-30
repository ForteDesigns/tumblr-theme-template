
css = style.css
theme = theme.html
layout = layout.html

default: $(theme)

%.css: %.less
	lessc -x $< > $@

$(theme): $(css)
	tumblr-theme -o $@ -xv $(layout)

clean:
	$(RM) $(theme) $(css)
