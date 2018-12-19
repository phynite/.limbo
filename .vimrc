so ~/.scripts/vim/portal.vim

" Plug

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'junegunn/limelight.vim'
call plug#end()

" UI

set nocompatible
set number
syntax on
colorscheme fantasy
filetype plugin on
set showmatch

" Saving

inoremap <c-q> <Esc>:wq<Enter>i<Right>
inoremap <c-s> <Esc>:w<Enter>i<Right>
inoremap <c-e> <Esc>:q!<Enter>i<Right>

" Movement

inoremap <c-d> <Esc>ddi<Right>

" Other

inoremap <c-p> <Esc>pi<Right>
inoremap <c-u> <Esc>ui
inoremap <c-g> <Esc>:Goyo<Enter>i<Right>
