require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "help",
        "javascript",
        "typescript",
        "c",
        "lua",
        "rust",
        "cpp",
        "python",
        "html",
        "json",
        "markdown",
        "toml",
        "bash",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = { enable = true },
    textobjects = { enable = true }
}
