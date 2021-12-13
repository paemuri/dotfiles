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
opt.smarttab = true
opt.expandtab = true
opt.softtabstop = 4
opt.shiftwidth = 4

g.mapleader = ' '
map('n', '<leader>o', ':Telescope find_files<cr>')
map('n', '<leader>O', ':Telescope find_files hidden=true no_ignore=true<cr>')
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

cmd [[
  set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬,space:·
]]

cmd [[
  autocmd BufRead *.md set filetype=markdown
  autocmd BufRead *.tex set filetype=tex
  autocmd FileType gitcommit setlocal spell textwidth=72
  autocmd FileType markdown setlocal colorcolumn=100
  autocmd Filetype rust setlocal colorcolumn=100
  autocmd Filetype go setlocal colorcolumn=100
]]

cmd [[
  syntax on
  highlight ColorColumn ctermbg=238
  filetype plugin indent on
]]

