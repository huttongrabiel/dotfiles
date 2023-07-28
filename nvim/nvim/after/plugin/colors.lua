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

require('tokyonight').setup({
    style = "storm",
})

require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

vim.cmd.colorscheme('material')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
