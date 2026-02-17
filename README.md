# LODE Template 2026 Free Edition

A professional LaTeX book template for creating print books and e-books. This is the free edition of the [LODE Template](https://www.lodepublishing.com/template).

## Quick Start

### Overleaf

Select **LuaLaTeX** as the compiler in the Overleaf menu. Each compilation automatically generates both `main.pdf` and `e-book.epub` via the `latexmkrc`. Download the EPUB from **Logs and output files** / **Other logs and files**.

### Local compilation

```bash
lualatex main.tex
biber main
lualatex main.tex
lualatex main.tex
```

The `latexmkrc` automatically runs tex4ebook after each compilation to generate the EPUB. To build the EPUB manually:

```bash
tex4ebook --lua -j e-book -c style/tex4ebook.cfg -f epub3 e-book.tex "mathml"
```

## Directory Structure

```
LODE-Template-2026-Free/
  0-front/          Front matter (title, publisher, TOC, preface)
  1-body/           Your chapters
  2-appendix/       Appendix content (empty by default)
  3-back/           Back matter (last page)
  images/           Book images
  lib/              LaTeX library files (packages, typography, references)
  settings/         Book configuration (title, trim size, margins, publisher)
  structure/        Document structure (front, body, appendix, back)
  style/            Visual styling (PDF, e-book, general)
  main.tex          Entry point for PDF output
  e-book.tex        Entry point for EPUB output
  e-book.mk4        Post-processing for EPUB
  bibliography.bib  Bibliography entries
  latexmkrc          Build automation (PDF + EPUB in one command)
```

## Configuration

Edit these files to customize your book:

- **`settings/details.tex`** -- Title, subtitle, author, keywords
- **`settings/content.tex`** -- Trim size, margins, page count, cover image
- **`settings/publisher.tex`** -- Publisher name, location, editor, designer
- **`settings/language.tex`** -- Book language (60+ languages supported)

## Features Included

- Professional PDF output with LuaLaTeX (pdfLaTeX fallback)
- EPUB3 e-book output with MathML support
- Professional fonts (Crimson Pro, Source Sans Pro, Source Code Pro, XITS Math)
- 60+ language support via Babel
- Dynamic inner margin calculation based on page count
- Tip boxes, definition boxes, alternating table row colors
- Widow/orphan line warnings
- PDF metadata (title, author, keywords)
- Draft mode for faster compilation
- Professional headers, footers, and chapter headings
- Endnotes for e-books (automatic footnote conversion)

## Full Template

The [full LODE Template](https://www.lodepublishing.com/template) adds:

- **Cover generator** for Amazon KDP, IngramSpark, and Lulu (paperback, e-book, hardcover)
- **Advanced build automation** with dependency tracking, image checking, and parallel cover compilation
- **Index system** with automatic formatting
- **Glossary system** with cross-referenced concept commands
- **Minted code highlighting** with syntax coloring
- **TikZ integration** with auto-scaling figures
- **Advanced typography** (lua-widow-control, selnolig, linebreaker)
- **Image optimization pipeline** for print and e-book
- **Compact mode** for denser layouts
- **Multi-column layout** support
- **Debug tools** for troubleshooting
- **Additional front matter** (half-title, author page, dedication, epigraph, foreword)
- **Additional back matter** (glossary, rate/review page)
- **Hardcover support** with adjusted trim sizes and hinge calculations

Get the full template at **https://www.lodepublishing.com/template**.

## Learn More

This template is covered in depth in [How to Publish Your Book with LaTeX](https://lodepublishing.com/book/latex-book-publishing-in-2026/), a complete guide to professional book publishing with LaTeX in 2026.

## Requirements

- TeX Live 2024+ (or equivalent)
- LuaLaTeX (recommended) or pdfLaTeX
- Biber (for bibliography)
- tex4ebook (for EPUB output)
- Fonts: Crimson Pro, Source Sans Pro, Source Code Pro, XITS Math

## License

See [LICENSE.md](LICENSE.md). Attribution required. No redistribution.
