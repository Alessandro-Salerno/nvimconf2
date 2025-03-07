return {
    theme = {
        path = "alevm.themes.catpuccin",
        -- This is theme-specific. Look inside the theme's lua file for all
        -- the availabel options
        opts = {
            flavour = "auto",
            line_num_color = "white",
            line_color = "#3F3F4F"
        }
    },

    mason = {
        ensure_installed = {'clang-format'},
        ensure_installed_lsp = {'lua_ls', 'rust_analyzer', 'clangd', 'jdtls'}
    },

    treesitter = {
        ensure_installed = { "c", "java", "lua", "vim", "vimdoc", "query",
                            "markdown", "markdown_inline", "bash" }
    },

    keys = {
        leader = " "
    }
}
