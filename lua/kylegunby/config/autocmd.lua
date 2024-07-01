--  See `:help lua-guide-autocommands`

-- NeoTree Auto Open
vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	group = vim.api.nvim_create_augroup("NeotreeOnOpen", { clear = true }),
	once = true,
	callback = function(_)
		if vim.fn.argc() == 0 then
			vim.cmd("Neotree")
		end
	end,
})

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

