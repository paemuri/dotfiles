if g.started_by_firenvim then
  return
end

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }
  set_opt('omnifunc', 'v:lua.vim.lsp.omnifunc', opts)
  map('n', 'gD', ':lua lsp.buf.declaration()<cr>', opts)
  map('n', 'gd', ':lua lsp.buf.definition()<cr>', opts)
  map('n', 'gi', ':lua lsp.buf.implementation()<cr>', opts)
  map('n', 'gt', ':lua lsp.buf.type_definition()<cr>', opts)
  map('n', 'gr', ':lua lsp.buf.references()<cr>', opts)
  map('n', 'K', ':lua lsp.buf.hover()<cr>', opts)
  map('n', '<C-k>', ':lua lsp.buf.signature_help()<cr>', opts)
  map('n', ';f', ':lua lsp.buf.formatting()<cr>', opts)
  map('n', ';r', ':lua lsp.buf.rename()<cr>', opts)
  map('n', ';e', ':lua diagnostic.open_float()<cr>', opts)
  map('n', '[d', ':lua diagnostic.goto_prev()<cr>', opts)
  map('n', ']d', ':lua diagnostic.goto_next()<cr>', opts)
  map('n', ';q', ':lua diagnostic.setloclist()<cr>', opts)
  map('n', ';wa', ':lua lsp.buf.add_workspace_folder()<cr>', opts)
  map('n', ';wr', ':lua lsp.buf.remove_workspace_folder()<cr>', opts)
  map('n', ';wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', opts)
  map('n', ';ca', ':lua lsp.buf.code_action()<cr>', opts)
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

