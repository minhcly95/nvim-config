return {
    'Wansmer/treesj',
    keys = { '<space>m' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {
        use_default_keymaps = false,
    },
    keys = {
        { '<leader>m', '<cmd>TSJToggle<cr>', desc = 'Toggle treesitter join' },
    },
    cmd = { 'TSJToggle', 'TSJSplit', 'TSJJoin' },
}
