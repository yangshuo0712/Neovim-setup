return {
	"folke/tokyonight.nvim",
  lazy = false,
  priority = 1000, --make sure to load this before all the other start plugins
  opts = {},
  config = function()
    vim.cmd([[colorscheme tokyonight-night]]) --load colorscheme here
  end,
  }
