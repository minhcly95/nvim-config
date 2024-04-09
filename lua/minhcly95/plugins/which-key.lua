return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function(_, opts)
        local wk = require 'which-key'
        wk.setup(opts)

        wk.register({
            ['<leader>f'] = { name = '+file' },
            ['<leader>t'] = { name = '+tab' },
            ['<leader>j'] = { name = '+julia' },
            ['<leader>cd'] = { name = '+change dir' },
            ['<leader>x'] = { name = '+trouble' },
        })
    end
}
