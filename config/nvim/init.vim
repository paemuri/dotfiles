if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
  silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    \ > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'neovim/nvim-lspconfig'
Plug 'andymass/vim-matchup'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/fzf', { 'do': './install --all --xdg' }
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
Plug 'taohexxx/lightline-buffer'
call plug#end()

set undofile
set undodir=~/.local/share/nvim/undodir/
set dir=~/.local/share/nvim/swap/
set hidden
set nowrap
set number
set relativenumber
set inccommand=nosplit
set synmaxcol=500
set regexpengine=1
set colorcolumn=80
set ignorecase
set noshowmode
set background=dark
set nocompatible
set showtabline=2

nnoremap <a-p> :Files<cr>
nnoremap <a-f> :Ag<cr>
nnoremap <a-e> :NERDTreeToggle<cr>
nnoremap <a-q> :bdelete<cr>
nnoremap <a-w> :write<cr>
nnoremap <a-,> :bprev<cr>
nnoremap <a-.> :bnext<cr>

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'wl-copy'

let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

let g:lightline =
  \ { 'colorscheme': 'jellybeans'
  \ , 'active':
  \     { 'left':
  \         [ [ 'mode', 'paste' ]
  \         , [ 'gitbranch', 'filename', 'readonly', 'modified' ]
  \         ]
  \     }
  \ , 'tabline':
  \     { 'left':
  \         [ [ 'bufferinfo' ]
  \         , [ 'separator' ]
  \         , [ 'bufferbefore', 'buffercurrent', 'bufferafter' ]
  \        ]
  \     , 'right': [[ 'close' ]]
  \     }
  \ , 'component_expand':
  \     { 'buffercurrent': 'lightline#buffer#buffercurrent'
  \     , 'bufferbefore': 'lightline#buffer#bufferbefore'
  \     , 'bufferafter': 'lightline#buffer#bufferafter'
  \     }
  \ , 'component_type':
  \     { 'buffercurrent': 'tabsel'
  \     , 'bufferbefore': 'raw'
  \     , 'bufferafter': 'raw'
  \     }
  \ , 'component_function':
  \     { 'gitbranch': 'gitbranch#name'
  \     }
  \ }

autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.tex set filetype=tex
autocmd FileType gitcommit setlocal spell textwidth=72
autocmd FileType markdown setlocal colorcolumn=100
autocmd Filetype rust setlocal colorcolumn=100
autocmd Filetype go setlocal colorcolumn=100

syntax on
"colorscheme darktooth
highlight ColorColumn ctermbg=238
filetype plugin indent on

