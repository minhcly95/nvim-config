return {
  "nvim-telescope/telescope-project.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    telescope = require("telescope")
    telescope.load_extension("project")
    vim.keymap.set("n", "<F12>", telescope.extensions.project.project, { desc = 'Open project' })
    vim.keymap.set("n", "<leader>fp", telescope.extensions.project.project, { desc = 'Open project' })
  end,
}
