-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- ALL OPTIONS DEFAULT CONFIG: https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/lua/neo-tree/defaults.lua
-- make sure a nerd font is loaded like jetbrains mono

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',

  dependencies = {
    'nvim-lua/plenary.nvim', -- Common Lua utility functions
    'nvim-tree/nvim-web-devicons', -- Adds file type icons
    'MunifTanjim/nui.nvim', -- UI components for layout/popups
  },

  lazy = false, -- Load Neo-tree on startup?

  keys = {
    {
      '<leader>e',
      ':Neotree toggle filesystem reveal left<CR>', -- Toggle sidebar and reveal current file
      desc = 'Toggle file tree with current file focused',
      silent = true,
    },
    {
      '\\',
      ':Neotree reveal<CR>', -- Reveal current file in Neo-tree without toggling
      desc = 'Reveal current file in Neo-tree',
      silent = true,
    },
  },

  opts = {
    source_selector = {
      winbar = true, -- Show source tabs (filesystem, buffers, etc) in the winbar
    },

    window = {
      width = 35, -- Set sidebar width
    },

    filesystem = {
      cwd_target = {
        sidebar = 'git', -- Set project root for sidebar to Git root
        current = 'lsp', -- Reveal current file relative to LSP root
      },
    },
  },
}
