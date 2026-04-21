local M = {}

local config = {
	tree_sitter_install_info = {
		url = 'https://github.com/FeudeyTF/tree-sitter-dm',
		branch = 'master',
		location = '',
		generate = true,
		generate_from_json = true,
		queries = 'queries/neovim',
	},
	language_server_dm_info = {
		cmd = vim.fs.joinpath(vim.fn.stdpath('data'), 'site', 'dm-langserver'),
		filetypes = { 'dm' },
		root_markers = { 'SpacemanDMM.toml', '.git' },
		settings = {},
		url = { 'https://github.com/SpaceManiac/SpacemanDMM/releases/download/suite-1.11/dm-langserver' }
	}
}

function M.setup(user_data)
	if user_data then
		if user_data.install_dir then
			user_data.install_dir = vim.fs.normalize(user_data.install_dir)
			vim.o.rtp = user_data.install_dir .. ',' .. vim.o.rtp
		end
		config = vim.tbl_deep_extend('force', config, user_data)
	end
end

function M.get_tree_sitter_info()
	return config.tree_sitter_install_info
end

function M.get_language_server_info()
	return { path = config.language_server_dm_path }
end

return M
