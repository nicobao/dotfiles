-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {
        -- this is necessary to keey the 'gx' hotkey
        -- https://github.com/nvim-tree/nvim-tree.lua/issues/226
        hijack_netrw = true,
        disable_netrw = false,
      }
    end,
  },
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'mfussenegger/nvim-jdtls',
  -- {
  --   'akinsho/flutter-tools.nvim',
  --   lazy = false,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'stevearc/dressing.nvim', -- optional for vim.ui.select
  --   },
  --   config = true,
  -- },
  -- {
  --   'pmizio/typescript-tools.nvim',
  --   dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  --   opts = {
  --     filetypes = {
  --       'javascript',
  --       'javascriptreact',
  --       'typescript',
  --       'typescriptreact',
  --
  --       'vue', -- This needed to be added.
  --     },
  --     settings = {
  --       tsserver_plugins = {
  --         -- Seemingly this is enough, no name, location or languages needed.
  --         '@vue/typescript-plugin',
  --       },
  --     },
  --   },
  -- },
  -- {
  --   'karb94/neoscroll.nvim',
  --   config = function()
  --     require('neoscroll').setup {}
  --   end,
  -- },
  -- {
  --   'jose-elias-alvarez/null-ls.nvim',
  --   config = function()
  --     local null_ls = require 'null-ls'
  --     null_ls.setup {
  --       sources = {
  --         null_ls.builtins.formatting.stylua,
  --         null_ls.builtins.diagnostics.eslint,
  --         null_ls.builtins.completion.spell,
  --         null_ls.builtins.formatting.prettier,
  --       },
  --     }
  --   end,
  --   requires = { 'nvim-lua/plenary.nvim' },
  -- },
}
