" enable syntax highlighting
syntax on

" use dark background in terminal
set background=dark

" highlight matching search strings
set hlsearch

" make searches case insensitive
set ignorecase

" make searches case insensitive, but smart
set smartcase

" use incremental search
set incsearch

" indentation style
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" automatic line wrapping
set textwidth=0 wrapmargin=0

" color scheme
"colorscheme <something>

" tab completion for file names
set wildmode=longest,list,full
set wildmenu

" more natural split opening
set splitbelow
set splitright
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" status line always on
set laststatus=2
set statusline=
set statusline+=\ %f
set statusline+=\ \ %{fugitive#statusline()}
set statusline+=\ %=
set statusline+=\ [line\ %l\/%L]\ [col\ %c]

" enable mouse in normal mode
"set mouse=n

" ctrlp.vim plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_by_filename = 1

" vim-fugitive plugin
set runtimepath^=~/.vim/bundle/vim-fugitive
