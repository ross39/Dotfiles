require 'nvim-treesitter.configs'.setup{
	ensure_installed = {"c", "lua", "rust", "python", "scala"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
	},
}
