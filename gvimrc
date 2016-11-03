"set background=light

"set number
set foldcolumn=1

" Fullscreen takes up entire screen
" defaults write org.vim.MacVim MMNativeFullScreen 0
"set background=dark
set background=light
if &background=="dark"
    set fuoptions=maxhorz,maxvert,background:#ff000000
    let g:indentLine_enabled = 0
else
    set fuoptions=maxhorz,maxvert,background:#ffffffff
    let g:indentLine_enabled = 1
    let g:indentLine_color_gui = '#f2f2f2'
endif

" Start in fullscreen mode
"set fu

" Command-T for CommandT
macmenu &File.New\ Tab key=<nop>
"map <D-t> :CommandT<CR>

" Try and turn off print
macmenu File.Print key=<nop>
" and then paste..
map <D-p> <nop>

" command-Shift-F for Ack
macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
map <D-F> :Ack<space>""<left>

" Start without the toolbar or scrollbars
set guioptions+=TrRlL
set guioptions-=TrRlL

" see https://github.com/noahfrederick/dots/blob/master/gvimrc
"set guioptions=gmte

" Favourite font
"set guifont=DejaVu\ Sans\ Mono:h14
"set guifont=Ubuntu\ Mono:h16
"set guifont=Monaco:h13
"set guifont=M+ 1m regular:h13
set guifont=Source\ Code\ Pro:h13

" Use the system clipboard by default
set clipboard=unnamed

" more than 80 characters is probably an error
"set textwidth=80
"set colorcolumn=+1

