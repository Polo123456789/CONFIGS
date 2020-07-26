set nobackup
syntax on
set number
set backspace=indent,eol,start
map <C-j> <Esc>/<++><CR><Esc>cf>
map <Space>ee :Explore<CR>
map <Space>ev :Vexplore<CR>
map <Space>eh :Sexplore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
nnoremap <silent> <leader>nb :set relativenumber!<CR>
