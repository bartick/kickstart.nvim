-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal float<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    window = {
      position = 'current', -- Opens Neo-tree in the current window, taking up full screen
      width = vim.o.columns, -- Optional: Set width to match current window width
    },
    popup_border_style = 'rounded',
    filesystem = {
      filtered_items = {
        visible = true, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = { -- Hides files with specific names
          'node_modules',
          '__pycache__',
          '.DS_Store',
        },
        hide_by_pattern = { -- Hides files or directories that match patterns
          '*.log', -- Example: hides all .log files
          '*.tmp', -- Example: hides all .tmp files
          'thumbs.db', -- Specific hidden file
        },
        never_show = { -- Never show these files even if `visible` is true
          '.git',
          'node_modules',
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
