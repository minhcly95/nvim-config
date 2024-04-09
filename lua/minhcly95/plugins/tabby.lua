return {
  'nanozuki/tabby.nvim',
  config = function()
    vim.o.showtabline = 2

    require "tabby.tabline".use_preset("active_wins_at_tail")

    vim.keymap.set("n", "<leader>ta", "<Cmd>$tabe<CR>", { noremap = true, desc = 'New tab', })
    vim.keymap.set("n", "<leader>tc", "<Cmd>tabc<CR>", { noremap = true, desc = 'Close tab', })
    vim.keymap.set("n", "<leader>to", "<Cmd>tabo<CR>", { noremap = true, desc = 'Close other tabs', })
    vim.keymap.set("n", "<leader>t]", "<Cmd>tabn<CR>", { noremap = true, desc = 'Next tab', })
    vim.keymap.set("n", "<leader>t[", "<Cmd>tabp<CR>", { noremap = true, desc = 'Previous tab', })

    for i = 1,9  do
      vim.keymap.set("n", "<leader>"..i, i.."gt", { noremap = true, desc = 'Go to tab '..i, })
    end
  end,
}
