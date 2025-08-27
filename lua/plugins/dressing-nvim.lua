-- ================================================================================================
-- TITLE : dressing.nvim
-- ABOUT : Improve the default vim.ui interfaces with a nicer selection UI
-- LINKS :
--   > github : https://github.com/stevearc/dressing.nvim
-- ================================================================================================

return {
	"stevearc/dressing.nvim",
	opts = {
		input = {
			enabled = true,
		},
		select = {
			enabled = true,
			backend = { "fzf_lua", "telescope", "builtin" },
			fzf_lua = {
				winopts = {
					height = 0.5,
					width = 0.5,
				},
			},
		},
	},
}
