vim.g.mapleader = " "

-- map leader+w to save current file in normal mode
vim.keymap.set("n", "<Leader>w", ":write<CR>", { noremap = true, silent = true })

--Neotree
vim.keymap.set('n', '<Leader>e', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<Leader>E', '<Cmd>Neotree focus<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>')

vim.opt.completeopt = {'menu', 'menuone', 'noselect' }

-- Debugger 
vim.keymap.set('n', '<leader>bp', '<cmd>DapToggleBreakpoint<CR>')

vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end, { desc = "DAP: Continue" })
vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end, { desc = "DAP: Step Into" })
vim.keymap.set("n", "<leader>do", function() require("dap").step_over() end, { desc = "DAP: Step Over" })
vim.keymap.set("n", "<leader>ds", function() require("dap").step_out() end, { desc = "DAP: Step Out" })
vim.keymap.set("n", "<leader>dr", function() require("dap").restart() end, { desc = "DAP: Restart" })
vim.keymap.set("n", "<leader>dq", function() require("dap").disconnect() end, { desc = "DAP: Quit" })

vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "DAP: Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dB", function() require("dap").clear_breakpoints() end, { desc = "DAP: Clear Breakpoints" })

vim.keymap.set("n", "<C-j>", function() require("dapui").nav(true) end, { desc = "DAP UI: Next" })
vim.keymap.set("n", "<C-k>", function() require("dapui").nav(false) end, { desc = "DAP UI: Previous" })
vim.keymap.set("n", "<CR>", function() require("dapui").toggle() end, { desc = "DAP UI: Toggle" })

vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end, { desc = "DAP UI: Toggle" })
vim.keymap.set("n", "<leader>dt", function() require("dap").toggle_breakpoint() end, { desc = "DAP: Toggle Breakpoint" })
--vim.opt.nvim_set_keymap('n', '<leader>dpr',
--    function()
--        require("dap-python").test_method()
--    end
--)

