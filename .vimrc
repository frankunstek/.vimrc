syntax on

set clipboard=unnamed

" mappings go here

nnoremap <SPACE> <Nop>
let mapleader=" "

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nmap <F8> :TagbarToggle<CR>
nmap <leader>n :NERDTree<CR>

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" mappings end

set noerrorbells
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch

" always show the status bar
set laststatus=2

" enable 256 colors
set t_Co=256
set t_ut=

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=80
set expandtab
set viminfo='25,\"50,n~/.viminfo

" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

" code folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins begin
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Bundle 'lepture/vim-jinja'
" Plugins end

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin()

" plugins start
Plug 'preservim/NERDTree'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
" plugins end

" color schemes start
Plug 'joshdick/onedark.vim'
" color schemes end

call plug#end()

" colors
colorscheme onedark

" autostart plugins
" autocmd vimenter * NERDTree

let python_highlight_all=1
syntax on

au BufNewFile, BufRead *.py
    \  set tabstop=4
    \  set softtabstop=4
    \  set shiftwidth=4
    \  set textwidth=79
    \  set expandtab
    \  set autoindent
    \  set fileformat=unix

au BufNewFile, BufRead *.js,*.html,*.css
    \  set tabstop=2
    \  set softtabstop=2
    \  set shiftwidth=2

