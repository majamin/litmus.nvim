# litmus.nvim

A light colorscheme with rose accents and blue-washed surfaces.

![screenshot](screenshot.png)

## Install

```lua
-- lazy.nvim
{
  "majamin/litmus.nvim",
  config = function()
    vim.cmd("colorscheme litmus")
  end,
}
```

## Customization

```lua
require("litmus").colors()
```

Options (pass to `setup`):

```lua
require("litmus").setup({
  transparent = false, -- set true to use the terminal background
})
```

Override before setup:

```lua
local litmus = require("litmus.nvim")
litmus.palette.primary = "#0369a1"
litmus.setup()
```

See `lua/litmus/init.lua` for the full list of colors.

## License

[MIT](LICENSE)
