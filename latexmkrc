# latexmk compilation settings
# Overleaf runs this automatically after PDF compilation.
# Generates EPUB from the same source files.
# Full template with covers, image optimization, and more: https://www.lodepublishing.com/template

END {
    system('tex4ebook --lua -j e-book -c style/tex4ebook.cfg -f epub3 e-book.tex "mathml"');
}
