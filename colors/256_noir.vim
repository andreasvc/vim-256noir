" Vim color file
" Name:       256_noir.vim
" Maintainer: Andreas van Cranenburgh <andreas@unstable.nl>
" Homepage:   https://github.com/andreasvc/vim-256noir/

" Basically: dark background, numerals & errors red,
" rest different shades of gray.
"
" colors 232--250 are shades of gray, from dark to light;
" 16=black, 255=white, 196=red, 88=darkred.

set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "256_noir"

if has("gui_running") || &t_Co == 256
	hi Normal	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Character	ctermfg=196	ctermbg=16	cterm=NONE	guifg=#ff0000	guibg=#000000	gui=NONE
	hi Number	ctermfg=196	ctermbg=16	cterm=NONE	guifg=#ff0000	guibg=#000000	gui=NONE
	hi Float	ctermfg=196	ctermbg=16	cterm=NONE	guifg=#ff0000	guibg=#000000	gui=NONE
	hi String	ctermfg=245	ctermbg=16	cterm=NONE	guifg=#8a8a8a	guibg=#000000	gui=NONE
	hi Boolean	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Constant	ctermfg=252	ctermbg=16	cterm=NONE	guifg=#d0d0d0	guibg=#000000	gui=NONE
	hi Delimiter	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Identifier	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Conditional	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Keyword	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Statement	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Comment	ctermfg=240	ctermbg=16	cterm=NONE	guifg=#585858	guibg=#000000	gui=NONE
	hi SpecialComment	ctermfg=245	ctermbg=16	cterm=NONE	guifg=#8a8a8a	guibg=#000000	gui=NONE
	hi Operator	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Structure	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Function	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Include	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Tag	ctermfg=196	ctermbg=16	cterm=NONE	guifg=#ff0000	guibg=#000000	gui=NONE
	hi Type	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Typedef	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Todo	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Label	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Title	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Define	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Error	ctermfg=255	ctermbg=88	cterm=NONE	guifg=#eeeeee	guibg=#870000	gui=NONE
	hi ErrorMsg	ctermfg=255	ctermbg=124	cterm=NONE	guifg=#eeeeee	guibg=#af0000	gui=NONE
	hi Cursor	ctermfg=16	ctermbg=245	cterm=NONE	guifg=#000000	guibg=#8a8a8a	gui=NONE
	hi CursorColumn	ctermfg=16	ctermbg=245	cterm=NONE	guifg=#000000	guibg=#8a8a8a	gui=NONE
	hi CursorLine	ctermfg=NONE	ctermbg=233	cterm=NONE	guifg=NONE	guibg=#121212	gui=NONE
	hi CursorLineNr	ctermfg=245	ctermbg=16	cterm=NONE	guifg=#8a8a8a	guibg=#000000	gui=NONE
	hi iCursor	ctermfg=16	ctermbg=255	cterm=NONE	guifg=#000000	guibg=#eeeeee	gui=NONE
	hi Folded	ctermfg=196	ctermbg=16	cterm=NONE	guifg=#ff0000	guibg=#000000	gui=NONE
	hi WarningMsg	ctermfg=196	ctermbg=16	cterm=NONE	guifg=#ff0000	guibg=#000000	gui=NONE
	hi LineNr	ctermfg=240	ctermbg=16	cterm=NONE	guifg=#585858	guibg=#000000	gui=NONE
	hi NonText	ctermfg=240	ctermbg=16	cterm=NONE	guifg=#585858	guibg=#000000	gui=NONE
	hi Debug	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Exception	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi FoldColumn	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Macro	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi ModeMsg	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi MoreMsg	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi Question	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi VertSplit	ctermfg=250	ctermbg=16	cterm=NONE	guifg=#bcbcbc	guibg=#000000	gui=NONE
	hi DiffText	ctermfg=250	ctermbg=196	cterm=NONE	guifg=#bcbcbc	guibg=#ff0000	gui=NONE
	hi DiffAdd	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi DiffDelete	ctermfg=240	ctermbg=16	cterm=NONE	guifg=#585858	guibg=#000000	gui=NONE
	hi DiffChange	ctermfg=160	ctermbg=255	cterm=NONE	guifg=#d70000	guibg=#eeeeee	gui=NONE
	hi diffAdded	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi diffRemoved	ctermfg=240	ctermbg=16	cterm=NONE	guifg=#585858	guibg=#000000	gui=NONE
	hi diffChanged	ctermfg=160	ctermbg=255	cterm=NONE	guifg=#d70000	guibg=#eeeeee	gui=NONE
	hi diffCommon	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Directory	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi PreCondit	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi PreProc	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Repeat	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi Special	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi SpecialChar	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi StatusLine	ctermfg=245	ctermbg=16	cterm=NONE	guifg=#8a8a8a	guibg=#000000	gui=NONE
	hi StatusLineNC	ctermfg=236	ctermbg=16	cterm=NONE	guifg=#303030	guibg=#000000	gui=NONE
	hi StorageClass	ctermfg=255	ctermbg=16	cterm=NONE	guifg=#eeeeee	guibg=#000000	gui=NONE
	hi SpellBad	ctermfg=250	ctermbg=88	cterm=NONE	guifg=#bcbcbc	guibg=#870000	gui=NONE
	hi SpellRare	ctermfg=124	ctermbg=16	cterm=NONE	guifg=#af0000	guibg=#000000	gui=NONE
	hi SpellCap	ctermfg=255	ctermbg=124	cterm=NONE	guifg=#eeeeee	guibg=#af0000	gui=NONE
	hi SpellLocal	ctermfg=255	ctermbg=124	cterm=NONE	guifg=#eeeeee	guibg=#af0000	gui=NONE
	hi Search	ctermfg=245	ctermbg=236	cterm=NONE	guifg=#8a8a8a	guibg=#303030	gui=NONE
	hi IncSearch	ctermfg=255	ctermbg=245	cterm=NONE	guifg=#eeeeee	guibg=#8a8a8a	gui=NONE
	hi PmenuThumb	ctermfg=232	ctermbg=240	cterm=NONE	guifg=#080808	guibg=#585858	gui=NONE
	hi Pmenu	ctermfg=255	ctermbg=240	cterm=NONE	guifg=#eeeeee	guibg=#585858	gui=NONE
	hi SignColumn	ctermfg=124	ctermbg=240	cterm=NONE	guifg=#af0000	guibg=#585858	gui=NONE
	hi Underlined	ctermfg=124	ctermbg=16	cterm=NONE	guifg=#af0000	guibg=#000000	gui=NONE
	hi MatchParen	ctermfg=16	ctermbg=245	cterm=NONE	guifg=#000000	guibg=#8a8a8a	gui=NONE
	hi ColorColumn	ctermfg=16	ctermbg=250	cterm=NONE	guifg=#000000	guibg=#bcbcbc	gui=NONE
	hi PmenuSbar	ctermfg=16	ctermbg=250	cterm=NONE	guifg=#000000	guibg=#bcbcbc	gui=NONE
	hi PmenuSel	ctermfg=16	ctermbg=250	cterm=NONE	guifg=#000000	guibg=#bcbcbc	gui=NONE
	hi Visual	ctermfg=16	ctermbg=250	cterm=NONE	guifg=#000000	guibg=#bcbcbc	gui=NONE
	hi VisualNOS	ctermfg=16	ctermbg=250	cterm=NONE	guifg=#000000	guibg=#bcbcbc	gui=NONE
	hi SpecialKey	ctermfg=16	ctermbg=255	cterm=NONE	guifg=#000000	guibg=#eeeeee	gui=NONE
	hi WildMenu	ctermfg=240	ctermbg=255	cterm=NONE	guifg=#585858	guibg=#eeeeee	gui=NONE
	hi rstEmphasis	ctermfg=124	ctermbg=16	cterm=NONE	guifg=#af0000	guibg=#000000	gui=NONE
else
	hi Normal	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Character	ctermfg=LightRed	ctermbg=Black	cterm=NONE
	hi Number	ctermfg=LightRed	ctermbg=Black	cterm=NONE
	hi Float	ctermfg=LightRed	ctermbg=Black	cterm=NONE
	hi String	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Boolean	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Constant	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Delimiter	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Identifier	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Conditional	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Keyword	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Statement	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Comment	ctermfg=DarkGray	ctermbg=Black	cterm=NONE
	hi SpecialComment	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Operator	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Structure	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Function	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Include	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Tag	ctermfg=LightRed	ctermbg=Black	cterm=NONE
	hi Type	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Typedef	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Todo	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Label	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Title	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Define	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Error	ctermfg=White	ctermbg=DarkRed	cterm=NONE
	hi ErrorMsg	ctermfg=White	ctermbg=Red	cterm=NONE
	hi Cursor	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi CursorColumn	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi CursorLine	ctermfg=NONE	ctermbg=Black	cterm=NONE
	hi CursorLineNr	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi iCursor	ctermfg=Black	ctermbg=White	cterm=NONE
	hi Folded	ctermfg=LightRed	ctermbg=Black	cterm=NONE
	hi WarningMsg	ctermfg=LightRed	ctermbg=Black	cterm=NONE
	hi LineNr	ctermfg=DarkGray	ctermbg=Black	cterm=NONE
	hi NonText	ctermfg=DarkGray	ctermbg=Black	cterm=NONE
	hi Debug	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Exception	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi FoldColumn	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Macro	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi ModeMsg	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi MoreMsg	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi Question	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi VertSplit	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi DiffText	ctermfg=LightGray	ctermbg=LightRed	cterm=NONE
	hi DiffAdd	ctermfg=White	ctermbg=Black	cterm=NONE
	hi DiffDelete	ctermfg=DarkGray	ctermbg=Black	cterm=NONE
	hi DiffChange	ctermfg=Red	ctermbg=White	cterm=NONE
	hi diffAdded	ctermfg=White	ctermbg=Black	cterm=NONE
	hi diffRemoved	ctermfg=DarkGray	ctermbg=Black	cterm=NONE
	hi diffChanged	ctermfg=Red	ctermbg=White	cterm=NONE
	hi diffCommon	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Directory	ctermfg=White	ctermbg=Black	cterm=NONE
	hi PreCondit	ctermfg=White	ctermbg=Black	cterm=NONE
	hi PreProc	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Repeat	ctermfg=White	ctermbg=Black	cterm=NONE
	hi Special	ctermfg=White	ctermbg=Black	cterm=NONE
	hi SpecialChar	ctermfg=White	ctermbg=Black	cterm=NONE
	hi StatusLine	ctermfg=LightGray	ctermbg=Black	cterm=NONE
	hi StatusLineNC	ctermfg=DarkGray	ctermbg=Black	cterm=NONE
	hi StorageClass	ctermfg=White	ctermbg=Black	cterm=NONE
	hi SpellBad	ctermfg=LightGray	ctermbg=DarkRed	cterm=NONE
	hi SpellRare	ctermfg=Red	ctermbg=Black	cterm=NONE
	hi SpellCap	ctermfg=White	ctermbg=Red	cterm=NONE
	hi SpellLocal	ctermfg=White	ctermbg=Red	cterm=NONE
	hi Search	ctermfg=LightGray	ctermbg=DarkGray	cterm=NONE
	hi IncSearch	ctermfg=White	ctermbg=LightGray	cterm=NONE
	hi PmenuThumb	ctermfg=Black	ctermbg=DarkGray	cterm=NONE
	hi Pmenu	ctermfg=White	ctermbg=DarkGray	cterm=NONE
	hi SignColumn	ctermfg=Red	ctermbg=DarkGray	cterm=NONE
	hi Underlined	ctermfg=Red	ctermbg=Black	cterm=NONE
	hi MatchParen	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi ColorColumn	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi PmenuSbar	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi PmenuSel	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi Visual	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi VisualNOS	ctermfg=Black	ctermbg=LightGray	cterm=NONE
	hi SpecialKey	ctermfg=Black	ctermbg=White	cterm=NONE
	hi WildMenu	ctermfg=DarkGray	ctermbg=White	cterm=NONE
	hi rstEmphasis	ctermfg=Red	ctermbg=Black	cterm=NONE
endif
