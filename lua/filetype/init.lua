local static = require("filetype.static")

local get_file_extension = function()
	local file_path = vim.api.nvim_buf_get_name(0)
	local extension = string.match(file_path, ".([%w]+)$")
	return extension
end

local set_filetypes = function()
	local file_extension = get_file_extension()
	if file_extension == nil then
		return
	end
	for key, value in pairs(static.config.filetype_list) do
		if key == file_extension then
			vim.bo.filetype = value
			break
		end
	end
end

local setup = function(new_config)
	static.config = vim.tbl_deep_extend("force", static.config, new_config or {})
end

return {
	set_filetypes = set_filetypes,
	setup = setup,
}
