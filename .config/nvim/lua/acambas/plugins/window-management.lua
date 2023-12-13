return {
	"mrjones2014/smart-splits.nvim",
	config = function()
		require("smart-splits").setup()
		-- recommended mappings
		-- resizing splits
		-- these keymaps will also accept a range,
		-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
		-- moving between splits
		vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
		vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
		vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
		vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
		-- swapping buffers between windows
		vim.keymap.set("n", "<leader>wh", require("smart-splits").swap_buf_left)
		vim.keymap.set("n", "<leader>wj", require("smart-splits").swap_buf_down)
		vim.keymap.set("n", "<leader>wk", require("smart-splits").swap_buf_up)
		vim.keymap.set("n", "<leader>wl", require("smart-splits").swap_buf_right)
		vim.keymap.set("n", "<leader>wr", require("smart-splits").start_resize_mode)
	end,
}
