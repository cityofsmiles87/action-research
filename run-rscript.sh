#cp /storage/emulated/0/GNURoot/home/Scripts/fedora/run-rscript.sh /data/data/com.termux/files/home/.atilo/fedora/R-Markdown
# bash /R-Markdown/run-rscript.sh

#sourcedir=/storage/emulated/0/GNURoot/home/R-Markdown
#sourcedir=/storage/emulated/0/GNURoot/home/R-Markdown/thesis

sourcefile=hugot-action-res.Rmd
#sourcefile=hugot.Rmd

#openfile=sample.pdf
#openfile=hugot.pdf

#targetdir=/data/data/com.termux/files/home/.atilo/fedora/R-Markdown
targetdir=/R-Markdown/thesis
cd $targetdir

if [ ! -d "$targetdir" ]; then
  mkdir -p $targetdir
fi

#while inotifywait -e close_write $sourcefile; do Rscript -e 'setwd("/R-Markdown/thesis"); library("rmarkdown"); render("hugot.Rmd",  "pdf_document")'; done

while inotifywait -e close_write $sourcefile; do Rscript -e 'setwd("/R-Markdown/thesis"); library("rmarkdown"); render("sample.Rmd", "pdf_document"); pdflatex sample.tex'; done

# while inotifywait -e close_write $sourcefile; do Rscript -e 'setwd("/R-Markdown/thesis"); library("rmarkdown"); render("hugot-action-res.Rmd", "pdf_document"); pdflatex hugot-action-res.tex'; done












