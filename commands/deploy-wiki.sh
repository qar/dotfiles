#!/bin/sh

# Generate vimwiki and push to Github pages

GIT=`which git`
COMMIT_TIMESTAMP=`date +'%Y-%m-%d %H:%M:%S %Z'`

# convert wiki files to html files
vim +VimwikiTabIndex +VimwikiAll2HTML +qall

cd ~/vimwiki
${GIT} add --all .
${GIT} commit -am "Automated update on ${COMMIT_TIMESTAMP}"
${GIT} push origin master

cd ~/vimwiki_html
${GIT} add --all .
${GIT} commit -am "Automated update on ${COMMIT_TIMESTAMP}"
${GIT} push origin gh-pages
