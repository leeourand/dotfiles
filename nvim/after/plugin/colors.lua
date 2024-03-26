require('rose-pine').setup({
	variant = "auto", -- auto, main, moon, or dawn
	dim_inactive_windows = false,
	extend_background_behind_borders = true,
	enable = {
		terminal = true,
	},
})

local auto_dark_mode = require('auto-dark-mode')

auto_dark_mode.setup({
	update_interval = 1000,
	set_dark_mode = function()
		vim.api.nvim_set_option('background', 'dark')
	end,
	set_light_mode = function()
		vim.api.nvim_set_option('background', 'light')
	end,
})

vim.cmd("colorscheme rose-pine")
