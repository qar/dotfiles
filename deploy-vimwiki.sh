# convert wiki files to html files
vim +VimwikiTabIndex +VimwikiAll2HTML +qall

cd ~/vimwiki
git add --all
git commit -m 'update'
git push origin master

cd ~/vimwiki_html
git add --all
git commit -m 'update'
git push origin gh-pages
