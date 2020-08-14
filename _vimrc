set nobackup
set number
set backspace=indent,eol,start
set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set hlsearch
set laststatus=2
set confirm
set visualbell
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let mapleader = "\<Space>"

map <C-j> <Esc>/<++><CR><Esc>"_cf>
map <leader>ee :Explore<CR>
map <leader>ev :Vexplore<CR>
map <leader>eh :Sexplore<CR>
map! <C-,> <Esc>A;<Esc>o

nnoremap <silent> <leader>nb :set relativenumber!<CR>
nnoremap <C-l> zz
nnoremap <leader>a @a
nnoremap <leader>s @s
nnoremap <leader>d @d
nnoremap <leader>f @f

inoremap <C-l> <Esc>l
inoremap fd <Esc>
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap {<CR> {<CR><CR>}<Esc>k"_cc
inoremap "" ""
inoremap () ()
inoremap <C-l> <C-o>zz
