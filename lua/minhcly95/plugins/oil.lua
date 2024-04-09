return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        delete_to_trash = true,
    },
    config = function(_, opts)
        require("oil").setup(opts)
        vim.keymap.set("n", "-", "<Cmd>Oil<CR>", { desc = "Open parent directory" })
    end,
}
