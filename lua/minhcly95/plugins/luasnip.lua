return {
  "L3MON4D3/LuaSnip",
  version = "2.*",
  config = function ()
    local ls = require("luasnip")

    ls.setup({
      enable_autosnippets = true,
      store_selection_keys = "<Tab>",
      update_events = 'TextChanged,TextChangedI',
    })

    -- Keymap
    vim.keymap.set({"i"}, "<Tab>", function ()
      return ls.expandable() and "<Plug>luasnip-expand-snippet" or "<Tab>"
    end, { silent = false, expr = true })

    vim.keymap.set({"i", "s"}, "jk", function ()
      return ls.jumpable(1) and "<Plug>luasnip-jump-next" or "jk"
    end, { silent = false, expr = true })

    vim.keymap.set({"i", "s"}, "<S-Tab>", function() ls.jump(-1) end, { silent = true })

    vim.keymap.set({"i", "s"}, "<C-E>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { silent = true })

    require("luasnip.loaders.from_lua").lazy_load()
  end,
}
