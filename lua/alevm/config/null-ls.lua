local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")
local methods = require("null-ls.methods")

local fourmolu = helpers.make_builtin({
    name = "fourmolu",
    method = methods.internal.FORMATTING,
    filetypes = { "haskell" },

    generator_opts = {
        command = "fourmolu",
        args = {
            "--stdin-input-file",
            "$FILENAME",
        },
        to_stdin = true,
    },

    factory = helpers.formatter_factory,
})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.clang_format,
        fourmolu,
    },

    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })

            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,

                callback = function()
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                        async = false,

                        filter = function(format_client)
                            return format_client.name == "null-ls"
                        end,
                    })
                end,
            })
        end
    end,
})
