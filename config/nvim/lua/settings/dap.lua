local dap = require 'dap'
-- require 'dap-go'.setup()

map('n', '<leader>db', ':lua dap.toggle_breakpoint()<cr>', opts)
map('n', '<leader>dq', ':lua dap.terminate()<cr>', opts)
map('n', '<leader>dc', ':lua dap.continue()<cr>', opts)
map('n', '<leader>ds', ':lua dap.step_over()<cr>', opts)
map('n', '<leader>di', ':lua dap.step_into()<cr>', opts)
map('n', '<leader>do', ':lua dap.step_out()<cr>', opts)
map('n', '<leader>dr', ':lua dap.repl.toggle()<cr>', opts)

