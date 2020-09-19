call plug#begin()

"Plug 'vim-scripts/taglist.vim'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode'
Plug 'lifepillar/vim-mucomplete'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'Polo123456789/vim-wombat-scheme'

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
" set exrc
" set secure
" set hlsearch

" Config del mucomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 1
inoremap <C-Space> <Esc>:redraw!<CR>a

" Omni Complete
" set omnifunc=syntaxcomplete#Complete

" Para usar el tema en la terminal
if (has("termguicolors"))
    set termguicolors
    colorscheme wombat
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

" Comodidades
nnoremap <leader>vrc :e ~/_vimrc<CR>
nnoremap <C-l> zz
inoremap <C-l> <C-o>zz

" Numeros relativos
nnoremap <silent> <leader>nb :set relativenumber!<CR>

" Placeholders
noremap <C-j> <Esc>/<++><CR><Esc>"_cf>

" Shortcuts
nnoremap <leader>bd :bd<CR>
nnoremap <leader><tab> :bn<CR>
nnoremap <leader>R :%s//g<left><left>
nnoremap <leader>hs :set hlsearch!<CR>

" Maps de Plugins
" nnoremap <leader>Ts :Tlist<CR>
nnoremap <leader>ee :NERDTreeToggle<CR>
nnoremap <leader>Ts :TagbarToggle<CR>
nnoremap <leader>Tc :!ctags --c-kinds=+p -R .<CR>
nnoremap <leader>ut :UndotreeToggle<CR>

" Tabs
nnoremap <leader>tn :tabnew 
nnoremap <leader>tl :tabn<CR>
nnoremap <leader>th :tabp<CR>

" Spell
nnoremap <leader>se :setlocal spell spelllang=es_es<CR>
nnoremap <leader>si :setlocal spell spelllang=en_us<CR>
nnoremap <leader>so :setlocal spell!<CR>
nnoremap <leader>sr z=
nnoremap <leader>sn ]s
nnoremap <leader>sd ]sz=1

" FZF
nnoremap <leader>ff :Files<CR>
nnoremap <leader>bb :Buffers<CR>

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

" Los org no les da el encodign correcto
function s:setEncodingUTF()
    set fileencoding=utf8
    set encoding=utf-8
endfunction
autocmd BufRead,BufNewFile *.org call s:setEncodingUTF()

" Apagamos el spell de pandoc
function s:sinSpell()
    set spell!
endfunction
autocmd BufRead,BufNewFile *.md call s:sinSpell()

" Creador de Header para markdown
function s:HeaderCreator()
    nnoremap <leader>mh1 YpVr=
    nnoremap <leader>mh2 YpVr-
    inoremap <localleader>1 <Esc>YpVr=o<C-j>
    inoremap <localleader>2 <Esc>YpVr-o<C-j>
endfunction
autocmd BufRead,BufNewFile *.md call s:HeaderCreator()


" Autocompletar tags en html
function s:CompleteTags()
  inoremap <buffer> > ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR>
  inoremap <buffer> ><Leader> >
  inoremap <buffer> ><CR> ></<C-x><C-o><Esc>:startinsert!<CR><C-O>?</<CR><CR><Tab><CR><Up><C-O>$
  inoremap {% {%%}<Esc>hi
endfunction
autocmd BufRead,BufNewFile *.html,*.js,*.xml call s:CompleteTags()

"" Modifique el default.tpl
"" En el head:
"" <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/styles/default.min.css" />
"" Al final del body
"" <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/highlight.min.js"></script>
"" <script type="text/javascript">
""     document.querySelectorAll('pre').forEach(block => hljs.highlightBlock(block));
"" </script>
"" O si lo cambias de lugar:
"" let g:vimwiki_list = [{'path': '~/vimwiki', 'template_path': '~/vimwiki/default.tpl'}]
