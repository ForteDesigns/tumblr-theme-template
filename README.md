## Tumblr Theme Template

Stay orginized and create great themes.

### Requirements

* [LESS - Leaner CSS](https://npmjs.org/package/less)
* [GPP - Generic Preprocessor ](en.nothingisreal.com/wiki/GPP)

### Downloading

`git clone git://github.com/ForteDesigns/tumblr-theme-template.git`

or [fork on GitHub](https://github.com/ForteDesigns/tumblr-theme-template)

### Usage

Generate a single `out/theme.html` file from `html/layout.html`:
```
make
```

**Notes:**

* LESS files placed in the `less` folder will be compiled into CSS and placed in the `css` folder.
* Syntax for using the preprocessor (`#include` or `#define` etc) can be found in the [documentation for GPP](http://files.nothingisreal.com/software/gpp/gpp.html).

### License

Tumblr theme template is maintained by [Forte Designs LLC](http://fortedesignsllc.com). It is free software and may be redistributed under the terms specified in the [LICENSE](LICENSE) file.
