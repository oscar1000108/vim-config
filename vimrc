set nocompatible
call plug#begin('~/.vim/plugged')
    Plug 'jacoborus/tender.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'lervag/vimtex'
    Plug 'SirVer/ultisnips'
call plug#end()

" vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["mycoolsnippets"]

syntax on " syntax highlighting
set number " line numbers
set termguicolors " true colour in terminal
set noshowmode " hide -- INSERT --, replaced by lightline
"highlight lines over 80 characters
augroup vimrc_autocmds
  autocmd BufRead * highlight OverLength ctermbg=darkred guibg=#592929
  autocmd BufRead * match OverLength /\%81v.*/
augroup END
colorscheme tender " enable nice colour scheme
set laststatus=2 " fix for lightline not showing
set belloff=all
set showcmd " display incomplete commands
set scrolloff=3 " keep 3 lines when scrolling

set ignorecase " case insensitive searching...
set smartcase  " ...unless an uppercase char is present
set backspace=indent,eol,start " allow backspacing properly
filetype plugin indent on " detect current filetype
" make tabs work properly
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch " highlight searches
set showmatch " jump to matches when entering regexp
set incsearch " search while typing
set exrc " source vimrc from current directory
set nosecure

" keybinds
inoremap jk <ESC>
let mapleader="\<Space>"
let maplocalleader="\<Space>"
" clear search when pressing enter in normal mode
nnoremap <CR> :let @/ = ""<CR>
" run make in build directory
nnoremap <Leader>m :!make -C build<CR>
