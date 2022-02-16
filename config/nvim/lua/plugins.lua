local packer_path = data_path .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(packer_path)) > 0 then
  local packer_git = 'https://github.com/wbthomason/packer.nvim.git'
  cmd('!git clone --depth=1 ' .. packer_git .. ' ' .. packer_path)
end

cmd 'packadd packer.nvim'

require 'packer'.startup(function()
  -- Packer itself.
  use 'wbthomason/packer.nvim'

  -- LSP.
  use 'neovim/nvim-lspconfig'

  -- Debugging.
  use 'mfussenegger/nvim-dap'
  use 'leoluz/nvim-dap-go'

  -- File tree.
  use 'scrooloose/nerdtree'

  -- Statusline/tabline.
  use 'nvim-lualine/lualine.nvim'

  -- Finder/opener.
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}}
  }

  -- Etc.
  use 'andymass/vim-matchup'
  use 'machakann/vim-highlightedyank'
end)

