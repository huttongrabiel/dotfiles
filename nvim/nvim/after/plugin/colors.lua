require('vscode').setup({
    style = 'dark',
})

require('material').setup({
    disable = {
        background = true
    }
})

vim.cmd.colorscheme('material')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
