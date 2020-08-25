set rtp+=~/scripts

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

filetype indent plugin on
syntax on
set nobackup
set fileencoding=utf8
set encoding=utf-8
set number
set backspace=indent,eol,start
set nocompatible
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
set pastetoggle=<F12>
set shiftwidth=4
set softtabstop=4
set expandtab
set background=dark

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let maplocalleader = "-"
let mapleader = "\<Space>"


vnoremap J :move +2<CR>gv
vnoremap K :move -2<CR>gv

nnoremap <silent> <leader>nb :set relativenumber!<CR>
noremap <C-j> <Esc>/<++><CR><Esc>"_cf>
nnoremap <C-l> zz
noremap <leader>bd :bd<CR>
nnoremap <leader>a @a
nnoremap <leader>s @s
nnoremap <leader>d @d
nnoremap <leader>f @f
nnoremap <leader>ee :NERDTreeToggle<CR>
nnoremap <leader>Ts :Tlist<CR>
nnoremap <leader>tn :tabnew 
nnoremap <leader>tl :tabn<CR>
nnoremap <leader>th :tabp<CR>

inoremap <C-,> <Esc>A;<Esc>o
inoremap <C-l> <Esc>l
inoremap fd <Esc>
inoremap " ""<Esc>i
inoremap "<leader> "
inoremap ( ()<Esc>i
inoremap (<leader> (
inoremap {<CR> {<CR><CR>}<Esc>k"_cc
inoremap {<leader> {
inoremap "" ""
inoremap () ()
inoremap <C-l> <C-o>zz

function s:CompleteTags()
  inoremap <buffer> > ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR>
  inoremap <buffer> ><Leader> >
  inoremap <buffer> ><CR> ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR><CR><Tab><CR><Up><C-O>$
  inoremap {% {%%}<Esc>hi
endfunction
autocmd BufRead,BufNewFile *.html,*.js,*.xml call s:CompleteTags()
