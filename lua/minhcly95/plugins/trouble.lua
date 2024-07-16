local prefix = "<leader>x"

return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
        { prefix,        desc = "Trouble" },
        { prefix .. "x", "<cmd>Trouble diagnostics toggle<cr>",              desc = "Diagnostics" },
        { prefix .. "X", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics" },
        { prefix .. "q", "<cmd>Trouble qflist toggle<cr>",                   desc = "Location list" },
        { prefix .. "l", "<cmd>Trouble qflist toggle<cr>",                   desc = "Quickfix list" },
    },
    opts = {
        use_diagnostic_signs = true,
        action_keys = {
            close = { "q", "<esc>" },
            cancel = { "<C-e>" },
        },
    },
}
