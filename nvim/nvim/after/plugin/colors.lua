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

require('colorbuddy').colorscheme('gruvbuddy')

--vim.cmd.colorscheme('gruvbuddy')

--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
