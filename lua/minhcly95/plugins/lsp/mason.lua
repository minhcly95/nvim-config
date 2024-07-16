return {
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local lspconfig = require "lspconfig"
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require "mason-lspconfig".setup {
                handlers = {
                    function(server_name)
                        lspconfig[server_name].setup {
                            capabilities = capabilities
                        }
                    end,
                    ["lua_ls"] = function()
                        lspconfig.lua_ls.setup {
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim", "s", "i", "t", "f", "d", "fmt", "fmta" }
                                    }
                                }
                            }
                        }
                    end,
                    ["clangd"] = function()
                        lspconfig.clangd.setup {
                            cmd = {
                                "clangd"
                            }
                        }
                    end,
                }
            }
        end,
    },
}
