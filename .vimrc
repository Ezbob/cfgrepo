" my vim user config file
colorscheme torte " bluish colour scheme for the editor

syntax on " vim guesses the syntax highlightning for the opened file

set number " line numbers are on, in the left margin
set numberwidth=4
set showtabline=1 " tabline redudant with status line 
set showcmd " normal mode commands that was inputted are now shown in the right hand left corner
set hlsearch " search matches is highlighted
set shiftround " round indent shift to shiftwidth
set mouse=n
set wrap
set laststatus=2
set stl=\ F:\ %f\ %m\ %r%=L:\ %l,%c\ 

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
inoremap <c-s> <esc>:write<cr>i
nnoremap <c-s> <esc>:write<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ct :MakeCTags
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>" <esc>i"<esc>v<`<esc>i"
vnoremap <leader>' <esc>i'<esc>v<`<esc>i'

iabbrev dont don't
iabbrev isnt isn't
iabbrev arent aren't
iabbrev Br Best Regards<cr>Anders Busch<cr>
iabbrev @@ andersbusch@gmail.com

" training wheels!
inoremap <esc> <nop>
inoremap jk <esc>
inoremap kj <esc>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

" mappings on file type
augroup filetype_clike
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup filetype_hashcmd
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

augroup filetype_makefile
    autocmd!
    autocmd FileType make set noexpandtab 
augroup END
