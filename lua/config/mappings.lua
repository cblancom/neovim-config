vim.g.mapleader = " "

-- map leader+w to save current file in normal mode
vim.keymap.set("n", "<Leader>w", ":write<CR>", { noremap = true, silent = true })

--Neotree
vim.keymap.set('n', '<Leader>t', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<Leader>T', '<Cmd>Neotree focus<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>')

vim.opt.completeopt = {'menu', 'menuone', 'noselect' }

-- Terminal
vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:CFloatTerm<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>')
--vim.opt.nvim_set_keymap('n', '<leader>dpr', 
--    function()
--        require("dap-python").test_method()
--    end
--)
