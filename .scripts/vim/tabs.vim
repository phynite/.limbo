" tabs.vim
" created by geremachek

" Functions

function NewFile()
	let nfile = input('File: ')
	execute ':tabnew ' . nfile
	call inputrestore()
	startinsert
endfunction

function NewTab()
	tabnew
	startinsert
endfunction

" Maps

" Numbered Tab Moving

inoremap /1 <Esc>1gti<Right>
inoremap /2 <Esc>2gti<Right>
inoremap /3 <Esc>3gti<Right>
inoremap /4 <Esc>4gti<Right>
inoremap /5 <Esc>5gti<Right>
inoremap /6 <Esc>6gti<Right>
inoremap /7 <Esc>7gti<Right>
inoremap /8 <Esc>8gti<Right>
inoremap /9 <Esc>9gti<Right>
inoremap /0 <Esc>10gti<Right>

" Back and forth Tab Moving

inoremap ;, <Esc>:tabp<Enter>i
inoremap ;. <Esc>:tabn<Enter>i

" New Tabs

inoremap ;n <Esc>:call NewTab()<Enter>
inoremap ;f <Esc>:call NewFile()<Enter>
