"""Script to generate vim color scheme.

Generates a vim color scheme that works with 256 and 16 color terminals,
as well as in gvim."""

PREAMBLE = """\
" Vim color file
" Name:       256_noir.vim
" Maintainer: Andreas van Cranenburgh <andreas@unstable.nl>
" Homepage:   https://github.com/andreasvc/vim-256noir/

" Basically: dark background, numerals & errors red,
" rest different shades of gray.
"
" colors 232--250 are shades of gray, from dark to light;
" 16=black, 255=white, 196=red, 88=darkred.

highlight clear
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "256_noir"
"""

# Group       ctermfg ctermbg  cterm
COLORS = """
Normal        250     16       NONE
Keyword       255     16       NONE
Constant      252     16       NONE
String        245     16       NONE
Comment       240     16       NONE
Number        196     16       NONE
Error         255     88       NONE
ErrorMsg      255     124      NONE
Search        245     236      NONE
IncSearch     255     245      reverse
DiffChange    160     255      NONE
DiffText      250     196      bold
SignColumn    124     240      NONE
SpellBad      255     88       undercurl
SpellCap      255     124      NONE
SpellRare     124     16       NONE
WildMenu      240     255      NONE
Pmenu         255     240      NONE
PmenuThumb    232     240      NONE
SpecialKey    16      255      NONE
MatchParen    16      240      NONE
CursorLine    NONE    233      NONE
StatusLine    245     16       bold,reverse
StatusLineNC  236     16       reverse
Visual        250     16       reverse
TermCursor    NONE    NONE     reverse
"""

# First tuple element has highlight, rest is linked to it.
LINKS = [
        ('Normal', 'Boolean', 'Delimiter', 'Identifier', 'Title', 'Debug',
            'Exception', 'FoldColumn', 'Macro', 'ModeMsg', 'MoreMsg',
            'Question'),
        ('Keyword', 'Conditional', 'Statement', 'Operator', 'Structure',
            'Function', 'Include', 'Type', 'Typedef', 'Todo', 'Label',
            'Define', 'DiffAdd', 'diffAdded', 'diffCommon', 'Directory',
            'PreCondit', 'PreProc', 'Repeat', 'Special', 'SpecialChar',
            'StorageClass'),
        ('String', 'SpecialComment', 'CursorLineNr'),
        ('Number', 'Character', 'Float', 'Tag', 'Folded', 'WarningMsg'),
        ('SpecialKey', 'iCursor'),
        ('SpellCap', 'SpellLocal'),
        ('Comment', 'LineNr', 'NonText', 'DiffDelete', 'diffRemoved'),
        ('Visual', 'PmenuSbar', 'PmenuSel', 'VisualNOS', 'VertSplit'),
        ('StatusLine', 'Cursor'),
        ('SpellRare', 'Underlined', 'rstEmphasis'),
        ('DiffChange', 'diffChanged'),
]

TORGB = {
        16: '#000000',
        88: '#870000',
        124: '#af0000',
        160: '#d70000',
        196: '#ff0000',
        232: '#080808',
        233: '#121212',
        234: '#1c1c1c',
        236: '#303030',
        240: '#585858',
        245: '#8a8a8a',
        250: '#bcbcbc',
        252: '#d0d0d0',
        255: '#eeeeee',
        'NONE': 'NONE',
}

TO16 = {
        16: 'Black',
        88: 'DarkRed',
        124: 'Red',
        160: 'Red',
        196: 'Red',
        232: 'Black',
        233: 'Black',
        234: 'DarkGray',
        236: 'DarkGray',
        240: 'DarkGray',
        245: 'Gray',
        250: 'Gray',
        252: 'Gray',
        255: 'White',
        'NONE': 'NONE',
}

if __name__ == '__main__':
    table = [(key, term,
                'NONE' if fg == 'NONE' else int(fg),
                'NONE' if bg == 'NONE' else int(bg))
            for key, fg, bg, term
            in (line.strip().split() for line in COLORS.strip().splitlines())]
    print(PREAMBLE)
    print('if has("gui_running") || &t_Co == 256')
    for key, term, fg, bg in table:
        print('    hi %s cterm=%s ctermfg=%s ctermbg=%s'
                ' gui=%s guifg=%s guibg=%s' % (
                key, term, fg, bg,
                term, TORGB[fg], TORGB[bg]))
    print('else')  # terminal with less colors, e.g., 88, 16, or 8.
    for key, term, fg, bg in table:
        print('    hi %s cterm=%s ctermfg=%s ctermbg=%s' % (
                key, term, TO16[fg], TO16[bg]))
    print('endif')
    for a in LINKS:
        for b in a[1:]:
            print('highlight! link %s %s' % (b, a[0]))
