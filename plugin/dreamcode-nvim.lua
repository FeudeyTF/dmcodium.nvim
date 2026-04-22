vim.filetype.add({
	extension = {
		dm = 'dm',
		dme = 'dm',
		dmm = 'dm',
	},
})

vim.api.nvim_create_user_command('DMUpdate', function()
	require('dreamcode.nvim').update()
end, {
	nargs = '*',
	bar = true,
	desc = 'Update tree sitter parser for DreamMaker language',
})
