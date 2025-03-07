return {
    theme = {
        path = "alevm.themes.catpuccin",
        -- This is theme-specific. Look inside the theme's lua file for all
        -- the availabel options
        opts = {
            flavour = "auto"
        }
    },

    mason = {
        ensure_installed = {'clang-format'},
        ensure_installed_lsp = {'lua_ls', 'rust_analyzer', 'clangd', 'jdtls'}
    },

    keys = {
        leader = " "
    }
}
