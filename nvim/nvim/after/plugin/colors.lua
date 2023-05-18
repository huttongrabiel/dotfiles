require('vscode').setup({
    style = 'dark',
})

require('material').setup({
    disable = {
        background = true
    }
})

require('gruvbox').setup({
    bold = true,
    contrast = "hard"
})

vim.cmd.colorscheme('gruvbox')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
