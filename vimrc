""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" My VIM Configuration
" by Qiao Anran <qiaoanran@gmail.com> 2016-03-26
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'scrooloose/nerdtree'
Plugin 'closetag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'wakatime/vim-wakatime'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme Configuration
" http://ethanschoonover.com/solarized
" vundle > Plugin 'altercation/vim-colors-solarized'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
syntax enable
colorscheme solarized


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" visibility 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number
set hlsearch
set ruler
set synmaxcol=200
set linebreak

" 浅色高亮当前行 / 列
set cursorline
set cursorcolumn
set guifont=Monospace\ 11
set foldmethod=indent "syntax, indent

" 高亮类html文件
au BufNewFile,BufRead *.ejs set filetype=html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coding Style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab 			" Expand tab with space
set tabstop=2			" One tab equals two spaces
set shiftwidth=2		" Indent by two characters 
set autoindent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Speed Up 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"标签页配置-通过ctrl-h/l切换前后标签
nnoremap <C-l> gt
nnoremap <C-h> gT

" 双击 ESC 去除行尾空白字符然后保存
map <Esc><Esc> :%s/\s\+$//e<enter> :w<enter>

" nerdtree
nmap ,nt :NERDTreeToggle<CR>

" 如果打开的文件除了NERDTree没有其他文件时，它自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" 全局设定 closetag 插件优先匹配 HTML 文件
let g:closetag_html_style=1

if !exists("b:unaryTagsStack") || exists("b:closetag_html_style")
    if &filetype == "html" || exists("b:closetag_html_style")
        let b:unaryTagsStacktack="area base br dd dt hr img input link meta param"
    else " for xml and xsl
        let b:unaryTagsStack=""
    endif
endif

if !exists("b:unaryTagsStack")
    let b:unaryTagsStack=""
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint', 'jscs']

" 不检查 html 文件语法
let g:syntastic_html_checkers=['']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
