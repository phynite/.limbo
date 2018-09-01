set nocompatible
set number
syntax on
colorscheme distinguished
filetype plugin on
set showmatch
set cursorline

let view_out = "false"

let fname = expand("%")
let fname2 = expand("%:t")

" General

inoremap ;p <Esc>pi
inoremap ;q <Esc>:wq<Enter>
inoremap ;s <Esc>:w<Enter>i
inoremap ;e <Esc>:q!<Enter>

" C++ Maps

autocmd FileType cpp inoremap ;m int main(int argc, char** argv)<Enter>{<Enter>}<Up><Enter><Tab>
autocmd FileType cpp inoremap ;i if()<Enter>{<Enter>}<Up><Enter><Tab><Up><Up><Left>
autocmd FileType cpp inoremap ;w while()<Enter>{<Enter>}<Up><Enter><Tab><Up><Up><Left>
if view_out == "true"
	autocmd FileType cpp inoremap ;c <Esc>:execute 'silent !g++' fname <Enter>:redraw!<Enter>i<Right>
elseif view_out == "false"
	autocmd FileType cpp inoremap ;c <Esc>:execute 'silent !g++' fname '> /dev/null 2>&1 &'<Enter>:redraw!<Enter>i<Right>
endif
" TeX Maps

autocmd FileType tex inoremap ;c <Esc>:execute 'silent !pdflatex' fname <Enter>:redraw!<Enter>i<Right>
if view_out == "true"
	autocmd FileType tex inoremap ;c <Esc>:execute 'silent !pdflatex' fname <Enter>:redraw!<Enter>i<Right>
elseif view_out == "false"
	autocmd FileType tex inoremap ;c <Esc>:execute 'silent !pdflatex' fname '> /dev/null 2>&1 &'<Enter>:redraw!<Enter>i<Right>
endif
autocmd FIleType tex inoremap ;m \documentclass{}<Esc>i<Right>
autocmd FIleType tex inoremap ;a \author{}<Esc>i<Right>
autocmd FIleType tex inoremap ;t \title{}<Esc>i<Right>
autocmd FIleType tex inoremap ;b \begin{document}<Enter><Enter><Enter><Enter>\end{document}<Esc>2ki
autocmd FIleType tex inoremap ;se \section{}<Esc>i
autocmd FIleType tex inoremap ;fr \begin{flushright}<Enter><Enter><Enter><Enter>\end{flushright}<Esc>2k
autocmd FIleType tex inoremap ;fl \begin{flushleft}<Enter><Enter><Enter><Enter>\end{flushleft}<Esc>2k
autocmd FIleType tex inoremap ;it \begin{itemize}<Enter><Enter>\end{itemize}<Esc>ki
autocmd FIleType tex inoremap ;sb \subsection{}<Esc>i

" Bash Maps

autocmd FileType sh inoremap ;m #!/bin/bash<Enter><Enter>
autocmd FileType sh inoremap ;i if [ ]<Enter>then<Enter><Tab><Enter>fi<Esc>4k 5li
autocmd FileType sh inoremap ;w while [ ]<Enter>do<Enter><Tab><Enter>done<Esc>4k 8li
