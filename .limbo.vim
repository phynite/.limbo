set nocompatible
set number
syntax on
colorscheme distinguished
filetype plugin on
set showmatch

" General

inoremap ;p <Esc>pi
inoremap ;t <Enter><Enter><Tab>
inoremap ;q <Esc>:wq<Enter>

" C++ Maps

autocmd FileType cpp inoremap ;m int main(int argc, char** argv)<Enter>{<Enter>}<Up><Enter><Tab>
autocmd FileType cpp inoremap ;i if()<Enter>{<Enter>}<Up><Enter><Tab><Up><Up><Left>
autocmd FileType cpp inoremap ;w while()<Enter>{<Enter>}<Up><Enter><Tab><Up><Up><Left>

" Bash Maps

autocmd FileType sh inoremap ;m #!/bin/bash<Enter><Enter>
autocmd FileType sh inoremap ;i if [ ]<Enter>then<Enter><Tab><Enter>fi<Esc>/]<Enter>i
autocmd FileType sh inoremap ;w while [ ]<Enter>do<Enter><Tab><Enter>done<Esc>/]<Enter>i
