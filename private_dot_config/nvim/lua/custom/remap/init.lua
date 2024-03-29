-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Diagnostic keymaps
vim.keymap.set('n', 'g9', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', 'g0', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

----------------------------------------------
----------------------------------------------

-- https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'x' }, '<leader>d', [["_d]])

-- remap Esc
-- Sadly, we can't remap C-c to Esc ...
vim.keymap.set({ 'i' }, '<C-c>', '<Esc>')

-- Recenter
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')

vim.keymap.set('n', 'Q', '<nop>')

vim.keymap.set('n', '<leader><CR>', '<cmd>e ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>1', '<cmd>Lazy update<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader><tab>', '<C-^>', { noremap = true })

-- nvim-tree.lua
vim.keymap.set('n', '<leader>fo', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ft', '<cmd>NvimTreeFindFile!<CR>', { noremap = true, silent = true })

-- resize window
vim.keymap.set('n', '<leader><right>', '<cmd>vertical resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><left>', '<cmd>vertical resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><up>', '<cmd>resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><down>', '<cmd>resize -5<CR>', { noremap = true, silent = true })
