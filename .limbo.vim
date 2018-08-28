set nocompatible
set number
syntax on
colorscheme distinguished
filetype plugin on
set showmatch

let fname = expand("%")
let fname2 = expand("%:t")

" General

inoremap ;p <Esc>pi
inoremap ;t <Enter><Enter><Tab>
inoremap ;q <Esc>:wq<Enter>
inoremap ;s <Esc>:w<Enter>i
inoremap ;e <Esc>:q!<Enter>

" C++ Maps

autocmd FileType cpp inoremap ;m int main(int argc, char** argv)<Enter>{<Enter>}<Up><Enter><Tab>
autocmd FileType cpp inoremap ;i if()<Enter>{<Enter>}<Up><Enter><Tab><Up><Up><Left>
autocmd FileType cpp inoremap ;w while()<Enter>{<Enter>}<Up><Enter><Tab><Up><Up><Left>
autocmd FileType cpp inoremap ;c <Esc>:execute 'silent !g++' fname<Enter>:redraw!<Enter>i

" TeX Maps

autocmd FileType tex inoremap ;c <Esc>:execute 'silent !pdflatex' fname2<Enter>:redraw!<Enter>i

" Bash Maps

autocmd FileType sh inoremap ;m #!/bin/bash<Enter><Enter>
autocmd FileType sh inoremap ;i if [ ]<Enter>then<Enter><Tab><Enter>fi<Esc>4k 5li
autocmd FileType sh inoremap ;w while [ ]<Enter>do<Enter><Tab><Enter>done<Esc>4k 5li
