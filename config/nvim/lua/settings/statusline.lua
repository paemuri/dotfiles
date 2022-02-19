local lualine = require 'lualine'
lualine.setup({
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
    lualine_c = {},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  inactive_sections = {},
  tabline = {
    lualine_a = {
      {
        'buffers',
         show_filename_only = true,
         show_modified_status = true,
         mode = 0,
         max_length = o.columns * 2 / 3,
         filetype_names = {
           TelescopePrompt = 'Telescope',
           packer = 'Packer',
           fzf = 'FZF',
         },
        buffers_color = {
          active = { bg = 'blue' },
          inactive = { bg = 'black', fg = 'white' },
        },
      },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      {
        'filename',
        file_status = true,
        path = 1,
        shorting_target = 40,
        symbols = {
          modified = ' [+]',
          readonly = ' [-]',
          unnamed = ' [no name]',
        },
      },
    },
    lualine_z = {'tabs'}
  },
  extensions = {},
})
