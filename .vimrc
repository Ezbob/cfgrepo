" my vim user config file
colorscheme torte " bluish colour scheme for the editor

syntax on " vim guesses the syntax highlightning for the opened file

set number " line numbers are on, in the left margin
set numberwidth=4
set showtabline=2 " the tab line is always on, showing the current file name along with some of the path
set showcmd " normal mode commands that was inputted are now shown in the right hand left corner
set hlsearch " search matches is highlighted
set shiftround " round indent shift to shiftwidth
set wrap
set laststatus=2
set stl=\ %f\ %m\ %r%=%l,%c\ 

set showfulltag
set nocompatible
set wildmenu
set completeopt=menu,preview,noinsert

set tabstop=4 " how many spaces does a tab correspond to ?
set shiftwidth=4 " how many spaces does one unit of "ident" correspond to?
set expandtab " expand tabs as spaces

" recurse file find
set path+=**

let mapleader=","
let maplocalleader="."

" netrw file explorer
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_browse_split = 4
" augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
" augroup END

command! MakeCTags !ctags -R .

inoremap <c-u> <esc>viwUi
inoremap <c-d> <esc>ddi
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
