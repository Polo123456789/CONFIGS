set nobackup
set number
set backspace=indent,eol,start
set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
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

map <C-j> <Esc>/<++><CR><Esc>cf>
map <Space>ee :Explore<CR>
map <Space>ev :Vexplore<CR>
map <Space>eh :Sexplore<CR>
map! <C-,> <Esc>A;<Esc>o

nnoremap <silent> <leader>nb :set relativenumber!<CR>

inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap <C-l> <Esc>l
