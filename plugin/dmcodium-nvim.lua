vim.api.nvim_create_user_command('DMUpdate', function(args)
	require('dmcodium.nvim').update()
end, {
	nargs = '*',
	bar = true,
	desc = 'Update tree sitter parser for DreamMaker language',
})
