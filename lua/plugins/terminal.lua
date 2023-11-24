return {
    {
        -- amongst your other plugins
        {'akinsho/toggleterm.nvim',
            config = true,
            version = "*", 
            cmd = 'ToggleTerm',
            keys = { {'<C-t>', '<cmd>ToggleTerm<cr>', desc = 'Toggle floating terminal'} },
            opts = {
                open_mapping = [[<C-t]],
--                direction = 'horizontal',
--                terminal_mappings = true
            }
        }
    }
}

--{<'C-t'>, '<cmd>ToggleTerm<cr>', desc = 'Toggle floating terminal'}    

