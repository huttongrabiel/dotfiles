-- Solarized Configuration
--
local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

if not ok_status then
    return
end

NeoSolarized.setup {
    style = "light",
    enable_italics = false,
    transparent = false,
}

vim.cmd.colorscheme('vscode')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
