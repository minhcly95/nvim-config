local prefix = "<leader>j"

return {
    {
        'jpalardy/vim-slime',
        lazy = true,
        init = function()
            vim.g.slime_no_mappings = true
        end,
        config = function()
            vim.g.slime_target = "tmux"
        end,
    },
    {
        'mroavi/vim-julia-cell',
        dependencies = {
            'jpalardy/vim-slime',
        },
        ft = "julia",
        config = function()
            vim.g.julia_cell_delimit_cells_by = 'tags'

            vim.api.nvim_create_autocmd("FileType", {
                pattern = "julia",
                callback = function()
                    vim.schedule(function()
                        vim.keymap.set("n", prefix .. "r", "<cmd>JuliaCellRun<cr>", { desc = 'Execute file', buffer = true })
                        vim.keymap.set("n", prefix .. "c", "<cmd>JuliaCellExecuteCellJump<cr>",
                            { desc = 'Execute cell and jump', buffer = true })
                        vim.keymap.set("n", prefix .. "C", "<cmd>JuliaCellExecuteCell<cr>", { desc = 'Execute cell', buffer = true })
                        vim.keymap.set("n", prefix .. "[", "<cmd>JuliaCellPrevCell<cr>", { desc = 'Previous cell', buffer = true })
                        vim.keymap.set("n", prefix .. "]", "<cmd>JuliaCellNextCell<cr>", { desc = 'Next cell', buffer = true })
                        vim.keymap.set("n", prefix .. "l", "<cmd>JuliaCellClear<cr>", { desc = 'Clear RELP', buffer = true })

                        vim.keymap.set("n", prefix .. "j", "<Plug>SlimeLineSend", { desc = 'Execute line', buffer = true })
                        vim.keymap.set("x", prefix, "<Plug>SlimeRegionSend", { desc = 'Execute selected', buffer = true })
                    end)
                end
            })
        end,
    },
}
