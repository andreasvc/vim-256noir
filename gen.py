"""Script to generate vim color scheme.

Uses the tab-separated file 'noir.tsv' to generate a vim color scheme
that works with 256 and 16 color terminals, as well as in gvim."""

PREAMBLE="""\
" 256 noir. Basically: dark background, numerals & errors red,
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
"""

TORGB = {
        16: '000000',
        88: '870000',
        124: 'af0000',
        160: 'd70000',
        196: 'ff0000',
        232: '080808',
        236: '303030',
        240: '585858',
        245: '8a8a8a',
        250: 'bcbcbc',
        252: 'd0d0d0',
        255: 'eeeeee',
}

TO16 = {
        16: 'Black',
        88: 'DarkRed',
        124: 'Red',
        160: 'Red',
        196: 'LightRed',
        232: 'Black',
        236: 'DarkGray',
        240: 'DarkGray',
        245: 'LightGray',
        250: 'LightGray',
        252: 'LightGray',
        255: 'White',
}

if __name__ == '__main__':
    with open('noir.tsv', 'r') as inp:
        table = [(key, int(fg), int(bg)) for key, fg, bg
                in (line.strip().split() for line in inp.readlines()[1:])]
    print(PREAMBLE)
    print('if has("gui_running") || &t_Co == 256')
    for key, fg, bg in table:
        print('\thi %s\tctermfg=%d\tctermbg=%d\tguifg=#%s\tguibg=#%s' % (
                key, fg, bg, TORGB[fg], TORGB[bg]))
    print('else')  # terminal with less colors, e.g., 88, 16, or 8.
    for key, fg, bg in table:
        print('\thi %s\tctermfg=%s\tctermbg=%s' % (key, TO16[fg], TO16[bg]))
    print('endif')
