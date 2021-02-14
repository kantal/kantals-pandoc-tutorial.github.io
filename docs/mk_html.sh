#!/bin/bash

# Convert Pandoc's Markdown to html
pandoc  -s --highlight-style haddock \
        -H mystyle.css \
        --quiet \
        --mathml  \
        --toc \
        -o ../index.html  pPandoc_tuto.md
