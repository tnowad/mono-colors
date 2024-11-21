local colors = {
	bg = "#1e1e1e", -- Background (dark grey)
	fg = "#c5c8c6", -- Foreground (light grey)
	light_grey = "#a7a7a7", -- Lighter grey for comments
	dark_grey = "#2e2e2e", -- Darker grey for status line or visual selections
	accent = "#888888", -- Accent grey for emphasis
	brighter = "#e0e0e0", -- Brighter grey for highlights
	dimmer = "#3e3e3e", -- Dimmer grey for subtle UI elements
}

local function setup()
	local set_hl = vim.api.nvim_set_hl

	-- General
	set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	set_hl(0, "CursorLine", { bg = colors.dark_grey })
	set_hl(0, "CursorLineNr", { fg = colors.brighter, bold = true })
	set_hl(0, "LineNr", { fg = colors.light_grey })
	set_hl(0, "Visual", { bg = colors.dimmer })

	-- Syntax highlighting
	set_hl(0, "Comment", { fg = colors.light_grey, italic = true })
	set_hl(0, "String", { fg = colors.accent })
	set_hl(0, "Function", { fg = colors.brighter, bold = true })
	set_hl(0, "Keyword", { fg = colors.accent, bold = true })
	set_hl(0, "Constant", { fg = colors.brighter })
	set_hl(0, "Type", { fg = colors.brighter, italic = true })

	-- Diagnostics
	set_hl(0, "Error", { fg = colors.fg, bg = colors.bg, bold = true })
	set_hl(0, "Warning", { fg = colors.accent, bold = true })
	set_hl(0, "Info", { fg = colors.brighter, bold = true })
	set_hl(0, "Hint", { fg = colors.light_grey, bold = true })

	-- UI elements
	set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.dark_grey })
	set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.accent })
	set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.dimmer })
	set_hl(0, "StatusLineNC", { fg = colors.light_grey, bg = colors.bg })
	set_hl(0, "TabLine", { fg = colors.light_grey, bg = colors.dark_grey })
	set_hl(0, "TabLineSel", { fg = colors.fg, bg = colors.accent })
	set_hl(0, "TabLineFill", { fg = colors.light_grey, bg = colors.bg })

	-- Git highlighting
	set_hl(0, "DiffAdd", { fg = colors.light_grey, bg = colors.bg })
	set_hl(0, "DiffChange", { fg = colors.accent, bg = colors.bg })
	set_hl(0, "DiffDelete", { fg = colors.dimmer, bg = colors.bg })
	set_hl(0, "DiffText", { fg = colors.brighter, bg = colors.bg, bold = true })
end

return {
	setup = setup,
}
