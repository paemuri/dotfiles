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
Plug 'neovim/nvim-lspconfig'
call plug#end()

lua << EOF

local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)

  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  -- <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap=true }
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', ';f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap('n', ';r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', ';e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', ';q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', ';wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', ';wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', ';wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', ';ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

end

local servers = {
  'gopls',
  'rust_analyzer',
  'tsserver',
  'zls',
  'graphql',
}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

EOF

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
nnoremap <leader>o :Files<cr>
nnoremap <leader>f :Ag<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>q :bdelete<cr>
nnoremap <leader>w :write<cr>
nnoremap <leader>, :bprev<cr>
nnoremap <leader>. :bnext<cr>

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

