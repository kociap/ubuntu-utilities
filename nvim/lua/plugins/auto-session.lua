return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")
		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "/" },
		})

		vim.keymap.set("n", "<leader>sr", "<CMD>SessionRestore<CR>", { desc = "Restore session for CWD" })
		vim.keymap.set("n", "<leader>ss", "<CMD>SessionSave<CR>", { desc = "Save current session for CWD" })
	end,
}
