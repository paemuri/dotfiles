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
map('n', '<leader>q', ':bdelete<cr>')
map('n', '<leader>w', ':write<cr>')
map('n', '<leader>,', ':bprev<cr>')
map('n', '<leader>.', ':bnext<cr>')

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

