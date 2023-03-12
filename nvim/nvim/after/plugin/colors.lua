require('vscode').setup({
    style = 'dark',
})

vim.cmd.colorscheme('vscode')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
