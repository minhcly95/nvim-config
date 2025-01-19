return {
    "rachartier/tiny-inline-diagnostic.nvim",
    config = function()
        require('tiny-inline-diagnostic').setup({
            signs = {
                left = "",
                right = "",
            },
            hi = {
                mixing_color = "#2d353b",
            },
            blend = {
                factor = 0.3,
            },
        })
        vim.diagnostic.config({ virtual_text = false })
    end
}
