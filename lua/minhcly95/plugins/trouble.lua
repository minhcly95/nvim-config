local prefix = "<leader>x"

return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
        { prefix,        desc = "Trouble" },
        { prefix .. "X", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace diagnostics" },
        { prefix .. "x", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document diagnostics" },
        { prefix .. "q", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix list" },
    },
    opts = {
        use_diagnostic_signs = true,
        action_keys = {
            close = { "q", "<esc>" },
            cancel = { "<C-e>" },
        },
    },
}
