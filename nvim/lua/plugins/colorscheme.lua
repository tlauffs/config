return {
	-- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	"luisiacc/gruvbox-baby",
	priority = 1000, -- Make sure to load this before all the oher start plugins.
	-- config = true,
	-- opts = {},
	init = function()
		vim.cmd.colorscheme("gruvbox-baby")
		vim.cmd.hi("Comment gui=none")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
