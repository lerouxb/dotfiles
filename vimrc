call pathogen#infect()

" AARARHGHhghgh
command! WQ wq
command! Wq wq
command! W w
command! Q q

" visible bell
set vb

" put new splits on the sane side (imho)
set splitbelow
set splitright

" Don't list images in Command-T plugin
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.uglified.js,*.min.js
set wildignore+=_old/**,deps/**

syntax on
"filetype plugin indent on
set nocompatible
set nonumber
set numberwidth=2
set ruler

" keep tabs at 8 spaces, indent with 4, don't use tabs.
set tabstop=8
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent


" statusbar thing
set laststatus=2
"set statusline=%t%m\ %y\ format:\ %{&ff};\ [%c,%l]
set statusline=%f%m\ %y%=%c,%l\ [%p%%]


" fix annoying # at start bug
autocmd FileType python set nocindent nosmartindent

" enable auto-completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" css3
"au BufRead,BufNewFile *.css set ft=css syntax=css3

" automatically remove trailing whitespace when saving
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.js normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.css normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.html normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.ammo normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.beard normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.md normal m`:%s/\s\+$//e ``

" smart indent for python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"au Syntax * syn sync clear | syn sync fromstart
au Syntax * syn sync clear | syn sync minlines=1000

" bash-like <tab> completion for filenames
set wildmode=longest,list:longest,full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*.swp,*.swo,_compiled,_old,node_modules,vendor

" Command-T configuration
let g:CommandTMaxHeight=20

" probably only for gvim?
"colorscheme slate
"colorscheme github
"set background=dark
set background=light
"colorscheme solarized
"colorscheme twilight
"colorscheme desertEx
colorscheme hemisu

" default encoding
set encoding=utf-8

" no backup files
set nobackup
set nowritebackup

" highlight trailing whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$|\t/
"autocmd BufWinEnter * highlight ExtraWhitespace ctermbg=red guibg=red
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$|\t/
"autocmd BufWinLeave * call clearmatches()
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


let g:ctrlp_custom_ignore = '\.DS_Store$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<Leader-p>'
