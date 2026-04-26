# noir.nvim

A dim, silent theme for Neovim.

Fork of [IlyasYOY/theme.nvim](https://github.com/IlyasYOY/theme.nvim).
<img width="1512" height="982" alt="Image" src="https://github.com/user-attachments/assets/74508104-3f7d-42c1-a854-a3ed6b55c2c9" />

## Installation

with Neovim 0.12's `vim.pack`

```lua
vim.pack.add({ { src = "https://github.com/xoldv/noir.nvim" } })
```

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "xoldv/noir.nvim", lazy = false, priority = 1000 }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "xoldv/noir.nvim" }
```

## Usage

```lua
vim.cmd("colorscheme noir")
```

## Configuration

No additional configuration is required. The theme loads automatically when the colorscheme is set.

## License

Licensed under the Apache License 2.0. See [LICENSE](./LICENSE) for details.
