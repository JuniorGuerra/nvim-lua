local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {
		noremap = true, silent = true
	})
end

mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "tt", ":t.<CR>")



--
-- KEYMAP config
--
mapper("n", "B", ":NvimTreeFocus<CR>")
mapper("n", "C", ":NvimTreeClose<CR>")



