# filetype.nvim

A simple plugin to manage filetypes in neovim

## Config

```lua
-- example
require("filetype").setup({
	filetype_list = {
        -- file suffix = filetype
		h = "c",
		sh = "sh",
		ebuild = "sh",
		hpp = "cpp",
		vert = "glsl",
		tesc = "glsl",
		tese = "glsl",
		geom = "glsl",
		frag = "glsl",
		comp = "glsl",
		rgen = "glsl",
		rint = "glsl",
		rahit = "glsl",
		rchit = "glsl",
		rmiss = "glsl",
		rcall = "glsl",
		wgsl = "wgsl",
	},
})
```
