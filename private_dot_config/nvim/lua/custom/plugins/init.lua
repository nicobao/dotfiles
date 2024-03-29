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
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  -- {
  --   'karb94/neoscroll.nvim',
  --   config = function()
  --     require('neoscroll').setup {}
  --   end,
  -- },
}
