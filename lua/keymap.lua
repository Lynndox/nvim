-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

-- Comment hotkeys
vim.keymap.set('n', '<leader>/', require('Comment.api').toggle.linewise.current, { desc = 'Comment line' })
vim.keymap.set('v', '<leader>/', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
  { desc = 'Toggle comment line' })

-- Change between buffers
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Next buffer tab' })
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer tab' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<c-\\><c-n><c-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-j>', '<c-\\><c-n><c-w>j', { desc = 'Move to below split' })
vim.keymap.set('n', '<C-k>', '<c-\\><c-n><c-w>k', { desc = 'Move to above split' })
vim.keymap.set('n', '<C-l>', '<c-\\><c-n><c-w>l', { desc = 'Move to right split' })

-- Stay in indent mode
vim.keymap.set({ 'n', 'v' }, '<', '<gv', { desc = 'Unindent line' })
vim.keymap.set({ 'n', 'v' }, '>', '>gv', { desc = 'Indent line' })

-- Close buffers
vim.keymap.set('n', '<leader>c', "<cmd>lua require('bufdelete').bufdelete(vim.api.nvim_get_current_buf(), false)<cr>",
  { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>C', "<cmd>lua require('bufdelete').bufdelete(vim.api.nvim_get_current_buf(), true)<cr>",
  { desc = 'Force close buffer' })

-- Neo-tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'Toggle Explorer' })
vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<cr>', { desc = 'Focus Explorer' })

-- vim.keymap.set('n', '<leader>/', function()
-- You can pass additional configuration to telescope to change theme, layout, etc.
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
-- end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
