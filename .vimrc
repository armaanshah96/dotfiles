" escape mappings
imap jj <ESC>
imap jk <ESC>

" line numbers
set number

" syntaxing
syntax on
set hlsearch

" cursor tracking
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"



" split window nav
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" trim trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" required for Vundle
" set nocompatible
" filetype off

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'

" tmux vim nav
" Plugin 'christoomey/vim-tmux-navigator'
