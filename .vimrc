:color desert
set autoindent
set cindent
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
:highligh Search ctermfg=white
:highlight ExtraWhitespace ctermbg=yellow guibg=yellow
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
:autocmd BufWritePre * :%s/\s\+$//e

:au BufWinEnter * let w:lineLength=matchadd('ErrorMsg', '\%>100v.\+',-1)
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


set nocp
filetype plugin on

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
autocmd CompleteDone * pclose

autocmd filetype cpp nnoremap<F4> :!g++ % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap<F5> :!g++ % -ggdb -o %:r && ./%:r <CR>
autocmd filetype cpp nnoremap<F10> :!g++ % -ggdb -o %:r && cgdb %:r <CR>
autocmd filetype c nnoremap<F4> :!gcc % -ggdb -o %:r <CR>
autocmd filetype c nnoremap<F5> :!gcc % -ggdb -o %:r && ./%:r <CR>
autocmd filetype c nnoremap<F10> :!gcc % -ggdb -o %:r && cgdb %:r <CR>
