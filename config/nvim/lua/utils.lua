api = vim.api
cmd = vim.cmd
fn = vim.fn
g = vim.g
lsp = vim.lsp
o = vim.o
opt = vim.opt

data_path = fn.stdpath 'data'

function map(mode, lhs, rhs, opts)
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

function set_opt(option, value, opts)
  if opts.buffer then
    local bufnr = opts.buffer
    opts.buffer = nil
    api.nvim_buf_set_option(bufnr, option, value)
  else
    opts.buffer = nil
    api.nvim_set_option(option, value)
  end
end

