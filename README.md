# My Neovim Configuration
This repository contains my current Neovim configuration files.

## Plugins
- [Packer](https://github.com/wbthomason/packer.nvim) package manager (discontinued but works like a charm for now)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Catpuccin](https://github.com/catppuccin/nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Undotree](https://github.com/mbbill/undotree)
- [lspconfig](https://github.com/neovim/nvim-lspconfig)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [Mason](https://github.com/williamboman/mason.nvim)
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [none-ls](https://github.com/nvimtools/none-ls.nvim)
- [autoclose](https://github.com/m4xshen/autoclose.nvim)

### Mason plugins
- clang-format
- lua-ls
- rust-analyzer
- clangd
- jdtls

### Treesitter parsers
- C
- Java
- Lua
- Vimscript
- Vimdoc
- Query
- Markdown
- Inline markdown
- Bash

## Requirements
The only dependency required by this config is `pakcer` itself, you can install it using:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
However, the various plugins may have requirements of their own!

## Customization
Currently, this config allows quite a small degree of customization without changing files in [lua/alevm](lua/alevm). However, some small tweaks can be made via the [lua/user/init.lua](lua/user/init.lua) file.

### Theming
By default, this configuration makes use of the Catpuccin theme, however I added a kind of "API" to change or add other themes. You can add themes by placing their configuration in [lua/alevm/themes/](lua/alevm/themes) and then editing the `theme` section of [lua/user/init.lua](lua/user/init.lua):
```lua
// ...
theme = {
    path = "alevm.themes.catpuccin",
    -- This is theme-specific. Look inside the theme's lua file for all
    -- the availabel options
    opts = {
        flavour = "auto"
    }
},

// ...
```
Themes added in the above-mentioned directory can make use of contents in the `opt` section by requiring the `user` package. Themes are also responsible for setting the color scheme:
```lua
local user = require("user")

require("catppuccin").setup({
    flavour = user.theme.opts.flavour, -- latte, frappe, macchiato, mocha
    // ...
}

vim.cmd.colorscheme "catppuccin"
```

## License
The bundle and the code I wrote are distributed under the MIT icense. See [LICENSE](LICENSE) for details. However, some scripts (e.g., themes, etc.) may be taken from other sources and, as such, may be distributed under different license.
