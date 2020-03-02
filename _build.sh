#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook',new_session = TRUE, clean_envir = TRUE)"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book',new_session = TRUE, clean_envir = TRUE)"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book',new_session = TRUE, clean_envir = TRUE)"

