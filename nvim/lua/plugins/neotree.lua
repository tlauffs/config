return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{
			"<leader>r",
			function()
				require("neo-tree.command").execute({
					toggle = true,
					source = "filesystem",
				})
			end,
			desc = "Buffers (root dir)",
		},
	},
	opts = {
		close_if_last_window = true,
		window = {
			position = "right",
		},
	},
	event_handlers = {

		{
			event = "file_opened",
			handler = function(file_path)
				-- auto close
				-- vimc.cmd("Neotree close")
				-- OR
				require("neo-tree.command").execute({ action = "close" })
			end,
		},
	},
}
