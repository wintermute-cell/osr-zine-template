# Minimal RPG Template (LaTeX)

This repository contains a LaTeX template, mainly intended for for creating Old
School Revival (OSR) Tabletop Role-Playing Game Zines. This does not mean the
template can not be used for other purposes.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/yellow_img.png)](https://www.buymeacoffee.com/winterv)

## Features

- A4 paper size.
- Double column layout.
- Alternating left and right binding offsets for print.
- Predefined sections for content.
- Header with title on each page.
- Footer with page numbers.
- Customizable margin settings.

## Dependencies

This template uses the following LaTeX packages:

- `extarticle` for the document class.
- `inputenc` and `fontenc` for special character and font encoding support.
- `graphicx` for including graphics.
- `lipsum` for generating dummy text.
- `fancyhdr` for custom headers and footers.
- `multicol` for multi-column layout.
- `geometry` for setting page dimensions and margins.
- `tabularx` for more flexible table layouts.
- `titlesec` for customizing section titles.
- `enumitem` for customizable list environments.
- `float` for improved interface for floating objects.
- `hyperref` for creating hyperlinks in the document.
- `xcolor` with the `table` option for coloring tables.
- `pifont` for accessing the Pi font symbols.
- `coelacanth` for the main document font.

If you use a common LaTeX distibution, these packages are most likely already
included, but otherwise please ensure these packages are installed before
compiling.

## Usage

1. Clone or download this repository.
2. Open the `Main.tex` file in your preferred LaTeX editor.
3. Replace the contents with your own.
5. Compile the `.tex` file.

All the formatting is taken from zine.cls.

## Submodule Usage

To place the style file in another repository, add it as a submodule:

`git submodule add https://github.com/wintermute-cell/osr-zine-template.git`

Then copy over `Main.tex`, while updating the class's full path:

`cp osr-zine-template/Main.tex .`

> \documentclass{osr-zine-template/zine} 

## Example
![example screenshot](./_example/example01.jpg)

## License

This project is open source, under the MIT License
