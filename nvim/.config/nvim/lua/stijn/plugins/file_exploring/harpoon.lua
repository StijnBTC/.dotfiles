return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local r = require("stijn.utils.remaps")
		local keys = {
			{
				r.noremap("n", "<leader>H", function()
					require("harpoon"):list():add()
				end, "Harpoon File"),
			},
			{
				r.noremap("n", "<leader>h", function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end, "Harpoon Quick Menu"),
			},
		}

		for i = 1, 5 do
			r.noremap("n", "<leader>" .. i, function()
				require("harpoon"):list():select(i)
			end, "Harpoon to File " .. i)
		end --r.noremap("n", "<leader>ff", ":Telescope find_files<cr>", "find files")
	end,

	opts = {
		menu = {
			width = vim.api.nvim_win_get_width(0) - 4,
		},
		settings = {
			save_on_toggle = true,
		},
	},
}
