fun HighlightPast80Lines()
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%80v.\+/
endfun

fun HighlightEOLExtraWhiteSpace()
    highlight EolWhiteSpace ctermbg=white ctermfg=white guibg=#592929
    match EolWhiteSpace /\s\+$/
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

set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax on

autocmd BufRead,BufNewFile *.py set tabstop=4 softtabstop=4 shiftwidth=4 
autocmd BufRead,BufNewFile *.py call HighlightPast80Lines()
autocmd BufRead,BufNewFile *.py call HighlightEOLExtraWhiteSpace()

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
autocmd BufRead,BufNewFile *.py set background=dark
