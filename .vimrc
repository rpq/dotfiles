fun HighlightPast80Characters()
    highlight Past80Characters ctermbg=red ctermfg=white guibg=#592929
    match Past80Characters /\%80v.\+/
endfun

fun HighlightEOLExtraWhiteSpace()
    highlight EOLExtraWhiteSpace ctermbg=white ctermfg=white guibg=#592929
    2match EOLExtraWhiteSpace /\s\+$/
endfun

fun HighlightPython()
    call HighlightEOLExtraWhiteSpace()
    call HighlightPast80Characters()
endfun

set hlsearch
set number
set ruler
set expandtab
set background=dark
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.pyc,*.bak,*.class
set fileformat=unix

set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax on

autocmd BufRead,BufNewFile *.py set tabstop=4 softtabstop=4 shiftwidth=4  background=dark
autocmd BufRead,BufEnter,BufRead,BufNewFile *.py call HighlightPython()

autocmd BufRead,BufNewFile *.rb set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.sh set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.html set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.erb set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.js set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.css set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.coffee set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.yaml set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.yml set tabstop=2 softtabstop=2 shiftwidth=2

autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

autocmd BufEnter,BufRead,BufNewFile *.hb syntax off

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let mapleader=","
nnoremap <Leader>b :let g:syntastic_auto_loc_list = 0
