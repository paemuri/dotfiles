if g.started_by_firenvim then
  return
end

map('n', '<leader>o', ':Telescope find_files<cr>')
map('n', '<leader>O', ':Telescope find_files hidden=true no_ignore=true<cr>')
map('n', '<leader>f', ':Telescope live_grep<cr>')
map('n', '<leader>e', ':NERDTreeToggle<cr>')
