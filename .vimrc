syntax on

set clipboard=unnamed

set noerrorbells
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch
set smarttab

" ---------------------------------------------------------------

" Plugins Vundle start

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

" Plugins end

call vundle#end()            " required
filetype plugin indent on    " required

" Plugins Vundle end

" ---------------------------------------------------------------

" Plugins Vim Plug start

call plug#begin()

" plugins start
Plug 'lepture/vim-jinja'
Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'
Plug 'preservim/NERDTree'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
" plugins end

" color schemes start
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
" color schemes end

" color schemes for lighline start 
Plug 'shinchu/lightline-gruvbox.vim'
" color schemes for lightline end

call plug#end()

" Plugins Vim Plug end

" ---------------------------------------------------------------

filetype plugin indent on
syntax on

" always show the status bar
set laststatus=2

" enable 256 colors
set t_Co=256
set t_ut=

" turn on line numbering
" set nu

" turn on relative line numbering
set relativenumber

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

" ---------------------------------------------------------------

" color scheme

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

syntax on
colorscheme gruvbox "onedark
set background=dark
filetype on
filetype plugin indent on

" ---------------------------------------------------------------

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" code folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" autostart plugins
" autocmd vimenter * NERDTree

" ---------------------------------------------------------------

" Mappings start

" Add new line without entering insert mode with Enter
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" indent/unindent with tab/shift-tab
" nmap <Tab> >>
" imap <S-Tab> <Esc><<i
" nmap <S-tab> <<

" remaps the leader from backslash to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" toggle tagbar and nerdtree
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

" ycm stuff
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" auto close brackets etc...
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" Mappings end

" ---------------------------------------------------------------

" Python start

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

" Python end

" Web start

au BufNewFile, BufRead *.js,*.html,*.css
    \  set tabstop=2
    \  set softtabstop=2
    \  set shiftwidth=2

" Web end

" ---------------------------------------------------------------
