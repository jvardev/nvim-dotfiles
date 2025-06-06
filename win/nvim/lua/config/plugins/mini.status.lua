return {
	{
		"echasnovski/mini.statusline",
		config = function()
			local statusline = require('mini.statusline')
			statusline.setup({
				use_icons = true,
				content = {
					active = function()
						local MiniStatusline = require('mini.statusline')
						local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
						local git = MiniStatusline.section_git({ trunc_width = 75 })
						local filename = MiniStatusline.section_filename({ trunc_width = 140 })
						local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
						local location = MiniStatusline.section_location({ trunc_width = 75 })
						
						return MiniStatusline.combine_groups({
							{ hl = mode_hl, strings = { mode } },
							{ hl = 'MiniStatuslineDevinfo', strings = { git } },
							{ hl = 'MiniStatuslineFilename', strings = { filename } },
							{ hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
							{ hl = 'MiniStatuslineFileinfo', strings = { location } },
						})
					end,
				},
			})
		end,
	}
}