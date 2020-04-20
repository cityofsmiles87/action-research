library(rmarkdown)

setwd("/R-Markdown/thesis")

rmarkdown::render('appendix.Rmd')
a <- readChar('appendix.tex', file.size('appendix.tex'))
a <- a %>% str_remove('[[:space:]]*\\\\hypertarget[[\\w\\W]]+\\z') %>%
  str_remove('\\A[[\\w\\W]]+begin.document.')
writeChar(a, 'appendix.tex',eos = NULL)
