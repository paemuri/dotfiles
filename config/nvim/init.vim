" Based on:
" https://github.com/jonhoo/configs/blob/master/editor/.config/nvim/init.vim
" https://github.com/plentiform/go-ide/blob/master/init.vim
" https://github.com/giioohbernini/dotnvim/blob/master/init.vim

call plug#begin()
Plug 'junegunn/fzf', { 'do': './install --all --xdg' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
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

let mapleader="\<space>"
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<cr>
nnoremap <leader>b :buffers<cr>:buffer<space>
nnoremap <leader>, :bprev<CR>
nnoremap <leader>. :bnext<CR>

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

