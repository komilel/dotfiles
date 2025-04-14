-- Relative motions plugin
require("relative-motions"):setup({ show_numbers = "relative", show_motion = true, enter_mode = "first" })

-- Simple bookmarks (yamb) plugin
require("yamb"):setup({
	-- Optional, recieve notification everytime you jump.
	jump_notify = false,
	-- Optional, the cli of fzf.
	cli = "fzf",
	-- Optional, the path of bookmarks
	-- path = os.getenv("HOME") .. "/.config/yazi/bookmarks/",
})
