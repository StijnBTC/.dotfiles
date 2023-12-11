vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>tc", "<cmd>Lspsaga term_toggle<cr>")

-- trouble
keymap.set("n", "<leader>xx", function()
	require("trouble").open()
end)
keymap.set("n", "<leader>xw", function()
	require("trouble").open("workspace_diagnostics")
end)
keymap.set("n", "<leader>xd", function()
	require("trouble").open("document_diagnostics")
end)
keymap.set("n", "<leader>xq", function()
	require("trouble").open("quickfix")
end)
keymap.set("n", "<leader>xl", function()
	require("trouble").open("loclist")
end)
keymap.set("n", "gR", function()
	require("trouble").open("lsp_references")
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
