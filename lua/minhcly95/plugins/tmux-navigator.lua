return {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<C-h>",     "<cmd><TmuxNavigateLeft<cr>" },
        { "<C-j>",     "<cmd>TmuxNavigateDown<cr>" },
        { "<C-k>",     "<cmd>TmuxNavigateUp<cr>" },
        { "<C-l>",     "<cmd>TmuxNavigateRight<cr>" },

        { "<C-left>",  "<cmd>TmuxNavigateLeft<cr>" },
        { "<C-down>",  "<cmd>TmuxNavigateDown<cr>" },
        { "<C-up>",    "<cmd>TmuxNavigateUp<cr>" },
        { "<C-right>", "<cmd>TmuxNavigateRight<cr>" },

        { "<C-\\>",    "<cmd>TmuxNavigatePrevious<cr>" },
    },
}
