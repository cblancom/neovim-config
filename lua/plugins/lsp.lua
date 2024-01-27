return {
     {
        "williamboman/mason.nvim",
        opt = {
            ensure_installed = {
                "pyright",
           }
        },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "lukas-reineke/lsp-format.nvim"
    },

    
    {
        "neovim/nvim-lspconfig",
        dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/nvim-cmp"},
        config = function()
            local on_attach = require("lsp-format").on_attach
            local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
            local lsp = require("lspconfig")
            lsp["pyright"].setup({ 
                on_attach = on_attach,
                settings = {pyright = {autoImportCompletion = true,},
                    python = {analysis = {autoSearchPaths = true,diagnosticMode = 'openFilesOnly',
                        useLibraryCodeForTypes = true,
                        typeCheckingMode = 'off'}}}
                })          
        end
    }
}

