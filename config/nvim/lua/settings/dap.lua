if g.started_by_firenvim then
  return
end

dap = require 'dap'
local dap_utils = require 'dap.utils'

-- Rust.
dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode',
}
dap.configurations.rust = {
  {
    type = 'lldb',
    request = 'attach',
    name = 'attach',
    pid = dap_utils.pick_process,
  },
}

-- Node.js.
dap.adapters.node = {
  type = 'executable',
  command = 'node',
  args = {
    os.getenv('PROJECTS_DIR') .. '/other/vscode-node-debug2/out/src/nodeDebug.js'
  },
}
dap.configurations.javascript = {
  {
    -- For this to work you need to make sure the node process is started with
    -- the `--inspect` flag.
    type = 'node',
    request = 'attach',
    name = 'attach',
    processId = dap_utils.pick_process,
  },
}
dap.configurations.typescript = dap.configurations.javascript

map('n', '<leader>db', ':lua dap.toggle_breakpoint()<cr>', opts)
map('n', '<leader>dq', ':lua dap.terminate()<cr>', opts)
map('n', '<leader>D', ':lua dap.continue()<cr>', opts)
map('n', '<leader>dn', ':lua dap.step_over()<cr>', opts)
map('n', '<leader>di', ':lua dap.step_into()<cr>', opts)
map('n', '<leader>do', ':lua dap.step_out()<cr>', opts)
map('n', '<leader>dr', ':lua dap.repl.toggle()<cr>', opts)

