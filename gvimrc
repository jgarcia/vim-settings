" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Monaco:h11           " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set lines=35 columns=135         	" Window dimensions.

set guioptions-=r                 " Don't show right scrollbar
set guioptions-=l

if has("gui_macvim")              "PeepOpen Stuff 
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end
