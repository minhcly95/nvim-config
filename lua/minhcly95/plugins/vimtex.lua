return {
    'lervag/vimtex',
    ft = "tex",
    config = function()
        vim.g.maplocalleader = " "
        vim.g.vimtex_compiler_latexmk = {
            out_dir = "out",
            options = {
                '--shell-escape',
                '-verbose',
                '-file-line-error',
                '-synctex=1',
                '-interaction=nonstopmode',
            },
        }
    end,
}
