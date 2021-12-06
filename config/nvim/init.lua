local fn = vim.fn
local cmd = vim.cmd
local g = vim.g
local opt = vim.opt
local lsp = vim.lsp
local api = vim.api

local data_path = fn.stdpath('data')

local packer_path = data_path .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(packer_path)) > 0 then
  local packer_git = 'https://github.com/wbthomason/packer.nvim.git'
  cmd('!git clone --depth=1 ' .. packer_git .. ' ' .. packer_path)
  cmd('PackerInstall')
end

cmd('packadd packer.nvim')
require('packer').startup(function()
use 'andymass/vim-matchup'
use 'machakann/vim-highlightedyank'
use 'neovim/nvim-lspconfig'
use 'nvim-lualine/lualine.nvim'
use 'scrooloose/nerdtree'
use 'taohexxx/lightline-buffer'
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)

local function map(mode, lhs, rhs, opts)
  opts = opts or { noremap = true }
  if opts.noremap == nil then
    opts.noremap = true
  end
  if opts.buffer then
    local bufnr = opts.buffer
    opts.buffer = nil
    api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
  else
    opts.buffer = nil
    api.nvim_set_keymap(mode, lhs, rhs, opts)
  end
end

local function set_opt(option, value, opts)
  if opts.buffer then
    local bufnr = opts.buffer
    opts.buffer = nil
    api.nvim_buf_set_option(bufnr, option, value)
  else
    opts.buffer = nil
    api.nvim_set_option(option, value)
  end
end

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }
  set_opt('omnifunc', 'v:lua.vim.lsp.omnifunc', opts)
  map('n', 'gD', '<cmd>lua lsp.buf.declaration()<CR>', opts)
  map('n', 'gd', '<cmd>lua lsp.buf.definition()<CR>', opts)
  map('n', 'gi', '<cmd>lua lsp.buf.implementation()<CR>', opts)
  map('n', 'gt', '<cmd>lua lsp.buf.type_definition()<CR>', opts)
  map('n', 'gr', '<cmd>lua lsp.buf.references()<CR>', opts)
  map('n', 'K', '<cmd>lua lsp.buf.hover()<CR>', opts)
  map('n', '<C-k>', '<cmd>lua lsp.buf.signature_help()<CR>', opts)
  map('n', ';f', '<cmd>lua lsp.buf.formatting()<CR>', opts)
  map('n', ';r', '<cmd>lua lsp.buf.rename()<CR>', opts)
  map('n', ';e', '<cmd>lua diagnostic.open_float()<CR>', opts)
  map('n', '[d', '<cmd>lua diagnostic.goto_prev()<CR>', opts)
  map('n', ']d', '<cmd>lua diagnostic.goto_next()<CR>', opts)
  map('n', ';q', '<cmd>lua diagnostic.setloclist()<CR>', opts)
  map('n', ';wa', '<cmd>lua lsp.buf.add_workspace_folder()<CR>', opts)
  map('n', ';wr', '<cmd>lua lsp.buf.remove_workspace_folder()<CR>', opts)
  map('n', ';wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  map('n', ';ca', '<cmd>lua lsp.buf.code_action()<CR>', opts)
end

local flags = {
  debounce_text_changes = 150,
}

local lspconfig = require('lspconfig')
local servers = {
  'gopls',
  'rust_analyzer',
  'tsserver',
  'zls',
  'graphql',
}
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    flags = flags
  }
end

opt.undofile = true
opt.undodir = data_path .. '/undodir/'
opt.dir = data_path .. '/swap/'
opt.hidden = true
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.inccommand = 'nosplit'
opt.synmaxcol = 500
opt.colorcolumn = '80'
opt.ignorecase = true
opt.showmode = false
opt.background = 'dark'
opt.compatible = false
opt.showtabline = 2

g.mapleader = ' '
map('n', '<leader>o', ':Telescope find_files<cr>')
map('n', '<leader>f', ':Telescope live_grep<cr>')
map('n', '<leader>e', ':NERDTreeToggle<cr>')
map('n', '<leader>q', ':bdelete<cr>')
map('n', '<leader>w', ':write<cr>')
map('n', '<leader>,', ':bprev<cr>')
map('n', '<leader>.', ':bnext<cr>')

require('lualine').setup({
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      'diff',
      { 'diagnostics', sources={'nvim_lsp'} },
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})

cmd('autocmd BufRead *.md set filetype=markdown')
cmd('autocmd BufRead *.tex set filetype=tex')
cmd('autocmd FileType gitcommit setlocal spell textwidth=72')
cmd('autocmd FileType markdown setlocal colorcolumn=100')
cmd('autocmd Filetype rust setlocal colorcolumn=100')
cmd('autocmd Filetype go setlocal colorcolumn=100')

cmd('syntax on')
cmd('highlight ColorColumn ctermbg=238')
cmd('filetype plugin indent on')

