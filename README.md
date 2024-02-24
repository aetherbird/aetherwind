# aetherwind-neovim
[Aetherwind] color scheme

Currently still **work in progress** and missing support for even the most
common plugins. This will be fixed shortly. If you are using a plugin that
isn't supported please create an issue, or upvote an existing one, we will use
this to prioritize them.

> These aren't currently up to date

![Aetherwind Dark for Neovim](screenshots/aetherwind-neovim-dark.png)

![Aetherwind Light for Neovim](screenshots/aetherwind-neovim-light.png)


## Installation
To install simply add via your plugin manager and call the theme

**[lazy.nvim](https://github.com/folke/lazy.nvim)**

```lua
require("lazy").setup({
  { 'aetherbird/aetherwind-neovim', name = 'aetherwind' }
})
```

**[packer.nvim](https://github.com/wbthomason/packer.nvim)**

```lua
require('packer').startup(function(use)
  use({ 'aetherbird/aetherwind-neovim', as = 'aetherwind' })
end)
```

**[Paq](https://github.com/savq/paq-nvim)**

```lua
require('paq')({
  { 'aetherbird/aetherwind-neovim', as = 'aetherwind' }
})
```

## Usage

* Dark

```lua
-- Set colorscheme after options
vim.cmd('colorscheme aetherwind-dark')
```

* Light

```lua
-- Set colorscheme after options
vim.cmd('colorscheme aetherwind-light')
```
