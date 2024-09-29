local color_scheme = os.getenv("COLOR_SCHEME") or "catppuccin"

local plugins = {
   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
   {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })
        end,
    },
    {
        "luisiacc/gruvbox-baby",
	  name ="gruvbox-baby",
        priority = 1000,
        config = function()
            vim.g.gruvbox_baby_transparent_mode = 1  
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require("kanagawa").setup({
                transparent = true,  
            })
        end,
    },
}

-- Apply the colorscheme based on the environment variable
vim.defer_fn(function()
    if color_scheme == "catppuccin" then
        vim.cmd.colorscheme("catppuccin")
    elseif color_scheme == "gruvbox" then
        vim.cmd.colorscheme("gruvbox-baby")
    elseif color_scheme == "kanagawa" then
        vim.cmd.colorscheme("kanagawa")
    end
end, 0)


return plugins
