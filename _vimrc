
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vimwiki/vimwiki'

call plug#end()

filetype indent plugin on
syntax on
set nobackup
set fileencoding=utf8
set encoding=utf-8
set number relativenumber
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
" set hlsearch

" Para usar el tema en la terminal
if (has("termguicolors"))
    set termguicolors
    colorscheme wombat
    " Has este cambio :
    " hi Title ctermfg=74 guifg=#5fafd7
endif

" Por si no tengo nerdTree a la mano
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:vimwiki_global_ext = 0

" Lideres
let maplocalleader = "-"
let mapleader = "\<Space>"

" Mover lineas.
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Una comodidad
nnoremap <C-l> zz
inoremap <C-l> <C-o>zz

" Numeros relativos
nnoremap <silent> <leader>nb :set relativenumber!<CR>
" Placeholders
noremap <C-j> <Esc>/<++><CR><Esc>"_cf>

" Shortcuts
nnoremap <leader>bd :bd<CR>
nnoremap <leader>R :%s//g<left><left>
nnoremap <leader>ee :NERDTreeToggle<CR>
nnoremap <leader>Ts :Tlist<CR>
nnoremap <leader>tn :tabnew 
nnoremap <leader>tl :tabn<CR>
nnoremap <leader>th :tabp<CR>
nnoremap <leader>se :setlocal spell spelllang=es_es<CR>
nnoremap <leader>si :setlocal spell spelllang=en_us<CR>
nnoremap <leader>so :setlocal spell!<CR>
nnoremap <leader>sr z=
nnoremap <leader>sn ]s
nnoremap <leader>sd ]sz=1

" Para poner el ; al final de la linea en C, C++, etc
inoremap <C-,> <Esc>A;<Esc>o

" Para no mover la mano del teclado
inoremap fd <Esc>

" Autocompletar ", (, {  
inoremap " ""<Esc>i
inoremap "<leader> "
inoremap ( ()<Esc>i
inoremap (<leader> (
inoremap {<CR> {<CR><CR>}<Esc>k"_cc
inoremap {<leader> {
inoremap "" ""
inoremap () ()

" Una cosa que quiero probar
nnoremap i zzi
nnoremap a zza

" Los org no les da el encodign correcto
function s:setEncodingUTF()
    set fileencoding=utf8
    set encoding=utf-8
endfunction
autocmd BufRead,BufNewFile *.org call s:setEncodingUTF()

" Autocompletar tags en html
function s:CompleteTags()
  inoremap <buffer> > ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR>
  inoremap <buffer> ><Leader> >
  inoremap <buffer> ><CR> ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR><CR><Tab><CR><Up><C-O>$
  inoremap {% {%%}<Esc>hi
endfunction
autocmd BufRead,BufNewFile *.html,*.js,*.xml call s:CompleteTags()

