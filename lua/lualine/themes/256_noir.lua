-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Credit itchyny, jackno (lightline)
-- stylua: ignore
local colors = {
	white1			= '#ffffff',
	white2			= '#e0e0e0',
	white3			= '#d0d0d0',
	gray1			= '#9f9f9f',
	gray2			= '#8a8a8a',
	gray3			= '#585858',
	gray4			= '#4a4a4a',
	gray5			= '#303030',
	gray6			= '#252525',
	orange			= '#ffb86c',
	red1			= '#ff0000',
	red2			= '#af0000',
	red3			= '#870000',
	black1			= '#121212',
	black2			= '#0a0a0a',
	black3			= '#000000',
}

return {
	normal = {
		a = { bg = colors.black1,  fg = colors.white2, gui = 'bold' },
		b = { bg = colors.gray5,  fg = colors.white3 },
		c = { bg = colors.black1, fg = colors.white3 },
	},
	insert = {
		a = { bg = colors.white1, fg = colors.black1, gui = 'bold' },
		b = { bg = colors.gray6,  fg = colors.orange },
		c = { bg = colors.black1, fg = colors.white1 },
	},
	visual = {
		a = { bg = colors.gray6, fg = colors.red1, gui = 'bold' },
		b = { bg = colors.gray4, fg = colors.white },
		c = { bg = colors.gray6, fg = colors.white },
	},
	replace = {
		a = { bg = colors.red1,  fg = colors.black1, gui = 'bold' },
		b = { bg = colors.gray4, fg = colors.white1 },
		c = { bg = colors.gray6, fg = colors.white3 },
	},
	command = {
		a = { bg = colors.gray5, fg = colors.orange, gui = 'bold' },
		b = { bg = colors.gray4, fg = colors.white1 },
		c = { bg = colors.gray6, fg = colors.white3 },
	},
	inactive = {
		a = { bg = colors.white1, fg = colors.gray6, gui = 'bold' },
		b = { bg = colors.black2, fg = colors.red3 },
		c = { bg = colors.black3, fg = colors.white3 },
	},
}
