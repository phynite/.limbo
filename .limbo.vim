so ~/.scripts/vim/tabs.vim

" UI

set nocompatible
set number
syntax on
colorscheme fantasy
filetype plugin on
set showmatch
set cursorline

" Saving

inoremap ;q <Esc>:wq<Enter>i<Right>
inoremap ;s <Esc>:w<Enter>i<Right>
inoremap ;e <Esc>:q!<Enter>i<Right>

" Movement

inoremap ;d <Esc>ddi<Right>

" Other

inoremap ;p <Esc>pi<Right>
inoremap ;u <Esc>ui
inoremap ;v <Esc>v
