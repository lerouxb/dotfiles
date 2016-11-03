set runtimepath^=~/.vim/bundle/ctrlp.vim

execute pathogen#infect()

" we use git
set nobackup
set noswapfile
set uc=0

" AARARHGHhghgh
command! WQ wq
command! Wq wq
command! W w
command! Q q

" select just-pasted text
nnoremap gp `[v`]

" visible bell
set vb

" put new splits on the sane side (imho)
set splitbelow
set splitright

" Don't list images in Command-T plugin
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.uglified.js,*.min.js
set wildignore+=,dist,node_modules,bower_components,build

syntax on
"filetype plugin indent on
set nocompatible
set nonumber
set numberwidth=2
set ruler

" keep tabs at 8 spaces, indent with 2, don't use tabs.
set tabstop=8
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set autoindent


" statusbar thing
set laststatus=2
"set statusline=%t%m\ %y\ format:\ %{&ff};\ [%c,%l]
set statusline=%f%m\ %y%=%c,%l\ [%p%%]


let mapleader=","
nmap <silent> <leader>sv :so $MYVIMRC<CR>:so $MYGVIMRC<CR>

" yank path and line number
nnoremap <leader>y :let @+=expand("%") . ':' . line(".")<CR>

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
autocmd BufWritePre *.coffee normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.eco normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.css normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.less normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.html normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.tpl normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.ammo normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.beard normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.md normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.basic normal m`:%s/\s\+$//e ``

" smart indent for python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"au Syntax * syn sync clear | syn sync fromstart
au Syntax * syn sync clear | syn sync minlines=1000

" bash-like <tab> completion for filenames
set wildmode=longest,list:longest,full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*.swp,*.swo,_compiled,_old,node_modules,vendor,output
",public

" Command-T configuration
"let g:CommandTMaxHeight=20

map <c-t> :CtrlP<CR>
map <D-t> :CtrlP<CR>
let g:ctrlp_map = '<D-t>'
let g:ctrlp_cmd = 'CtrlP'

" default encoding
set encoding=utf-8

" no backup files
set nobackup
set nowritebackup

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

let g:ctrlp_custom_ignore = '\.DS_Store$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<Leader-p>'

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufEnter * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * match ExtraWhitespace /\s\+$/
autocmd BufEnter * match ExtraWhitespace /\s\+$/

" four spaces for python
au BufNewFile,BufReadPost *.python setl shiftwidth=4 softtabstop=4 expandtab


set background=dark " the terminal is probably dark
colorscheme hemisu

au BufNewFile,BufRead *.psql setf psql
autocmd BufNewFile,BufRead *.json set ft=javascript
