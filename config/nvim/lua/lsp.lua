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

local servers = {
  'gopls',
  'rust_analyzer',
  'tsserver',
  'zls',
  'graphql',
}

local lspconfig = require 'lspconfig'
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    flags = flags
  }
end

