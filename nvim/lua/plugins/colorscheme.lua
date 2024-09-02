vim.g.gruvbox_baby_transparent_mode = 1

return {
	-- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	
	-- "luisiacc/gruvbox-baby",
	-- config = true,
	-- opts = {},
	-- priority = 1000, 
	{
		"catppuccin/nvim", 
		name = "catppuccin", 
		priority = 1000,  -- Missing comma is added here
		config = function()
			require("catppuccin").setup({
				transparent_background = true, 
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
