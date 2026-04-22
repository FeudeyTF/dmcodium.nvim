# dreamcode.nvim

Simple plugin that will try to install the tree-sitter-dm parser and queries for it to improve your Spaceman coding.

Also, the plugin adds filetype `dm` for `.dm` and `.dme` files.

# Installation

vim.pack:

```lua
vim.pack.add({
	{ src = "https://github.com/FeudeyTF/dreamcode.nvim" },
	"https://github.com/nvim-treesitter/nvim-treesitter"
})

require('dreamcode.nvim').setup()
```

If, when you open a `.dm` file, you see an error, try running `TSInstall dm`. It will install the dm parser via nvim-treesitter.

# Setup

Default configuration:

```lua
require('dreamcode.nvim').setup({
    tree_sitter_install_info = {
		url = 'https://github.com/FeudeyTF/tree-sitter-dm',
		branch = 'master',
		location = '',
		generate = true,
		generate_from_json = true,
		queries = 'queries/neovim',
	},
	language_server_dm_info = {
		cmd = 'dm-langserver',
		filetypes = { 'dm' },
		root_markers = { 'SpacemanDMM.toml', '.git' },
		settings = {},
	}
})
```

You can specify the repository for the DreamMaker parser, the queries folder, and other tree-sitter stuff for nvim-treesitter. Also, there is experimental functionality with the LSP server (SpaceManiac's one), but it doesn't identify the DM filetype for some reason.