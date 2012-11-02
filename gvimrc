"set number
set foldcolumn=1

" Fullscreen takes up entire screen
"set fuoptions=maxhorz,maxvert,background:#001B1E1F
if &background=="dark"
    set fuoptions=maxhorz,maxvert,background:#00000000
else
    set fuoptions=maxhorz,maxvert,background:#00ffffff
endif

" Start in fullscreen mode
set fu

" Command-T for CommandT
macmenu &File.New\ Tab key=<nop>
map <D-t> :CommandT<CR>

" command-Shift-F for Ack
macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
map <D-F> :Ack<space>

" Start without the toolbar or scrollbars
set guioptions+=TrRlL
set guioptions-=TrRlL

" see https://github.com/noahfrederick/dots/blob/master/gvimrc
"set guioptions=gmte

" Favourite font
"set guifont=Dejavu_sans_mono:h14
" set guifont=Ubuntu\ Mono:h16
set guifont=Monaco:h13

" Use the system clipboard by default
set clipboard=unnamed

" more than 80 characters is probably an error
"set textwidth=80
"set colorcolumn=+1
