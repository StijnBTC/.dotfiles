require("stijnbtc.set")
require("stijnbtc.remap")
require("stijnbtc.packer")
require("stijnbtc.colorscheme")
local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
