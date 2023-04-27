local filetype = require("filetype")

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = "*",
	callback = function()
		filetype.set_filetypes()
	end,
})
