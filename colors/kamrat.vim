" -----------------------------------------------------------------------------
" File: kamrat.vim
" Version: 1
" Description: Color scheme in which colors get together really well
" Author: Dawid Zych <dawid.zych@yandex.com>
" License: The MIT License (MIT)
" Source: https://github.com/silenc3r/kamrat
" Based On: https://github.com/morhetz/gruvbox
" Last Modified: 20 Mar 2018
" -----------------------------------------------------------------------------

" Supporting code -------------------------------------------------------------
" Initialisation: {{{

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name='kamrat'

" if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
if !(has('termguicolors') && &termguicolors) && !has('gui_running')
    finish
endif

" }}}
" Global Settings: {{{

if !exists('g:kamrat_italic')
    if has('gui_running') || $TERM_ITALICS == 'true'
        let g:kamrat_italic=1
    else
        let g:kamrat_italic=0
    endif
endif

let s:is_dark=(&background == 'dark')

" }}}
" Palette: {{{

" setup palette dictionary
let s:ka = {}

" fill it with absolute colors
let s:ka.dark0  = ['#292c34', 0]
let s:ka.dark1  = ['#32363f', 0]
let s:ka.dark2  = ['#444852', 0]
let s:ka.dark3  = ['#555963', 0]
let s:ka.dark4  = ['#686c77', 0]

let s:ka.gray   = ['#7a7e89', 0]

let s:ka.light4 = ['#90939f', 0]
let s:ka.light3 = ['#acafbb', 0]
let s:ka.light2 = ['#c6c8d2', 0]
let s:ka.light1 = ['#dcdde7', 0]
let s:ka.light0 = ['#f2f2fb', 0]

let s:ka.black = ['#000000', 0]

let s:ka.red      = ['#e86972', 0]
let s:ka.dark_red = ['#dd4658', 0]

let s:ka.blue       = ['#5b93c9', 0]
let s:ka.light_blue = ['#91c4f8', 0]
let s:ka.bright_blue = ['#4aa7f7', 0]
let s:ka.dark_blue  = ['#0b76bf', 0]

let s:ka.orange = ['#ec8d2e', 0]
let s:ka.dark_orange = ['#ad5d01', 0]

let s:ka.brown  = ['#917964', 0]
let s:ka.beige  = ['#c6ad99', 0]

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'

let s:italic = 'italic,'
if g:kamrat_italic == 0
    let s:italic = ''
endif

let s:underline = 'underline,'

let s:undercurl = 'undercurl,'

let s:inverse = 'inverse,'

" }}}
" Setup Colors: {{{

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none   = ['NONE', 'NONE']

" determine relative colors
if s:is_dark
    let s:bg0 = s:ka.dark0
    let s:bg1 = s:ka.dark1
    let s:bg2 = s:ka.dark2
    let s:bg3 = s:ka.dark3
    let s:bg4 = s:ka.dark4

    let s:gray = s:ka.gray

    let s:fg0 = s:ka.light0
    let s:fg1 = s:ka.light1
    let s:fg2 = s:ka.light2
    let s:fg3 = s:ka.light3
    let s:fg4 = s:ka.light4

    let s:red         = s:ka.red
    let s:blue        = s:ka.blue
    let s:light_blue  = s:ka.light_blue
    let s:brown       = s:ka.brown
    let s:beige       = s:ka.beige

    let s:orange      = s:ka.orange
    let s:dark_orange = s:ka.dark_orange
    let s:dark_red    = s:ka.dark_red
else " light
    let s:bg0 = s:ka.light0
    let s:bg1 = s:ka.light1
    let s:bg2 = s:ka.light2
    let s:bg3 = s:ka.light3
    let s:bg4 = s:ka.light4

    let s:gray = s:ka.gray

    let s:fg0 = s:ka.black
    let s:fg1 = s:ka.dark0
    let s:fg2 = s:ka.dark2
    let s:fg3 = s:ka.dark3
    let s:fg4 = s:ka.dark4

    let s:red        = s:ka.dark_red
    let s:blue       = s:ka.dark_blue
    let s:light_blue = s:ka.bright_blue
    let s:brown      = s:ka.dark_orange
    let s:beige      = s:ka.orange

    let s:orange      = s:ka.orange
    let s:dark_orange = s:ka.dark_orange
    let s:dark_red    = s:ka.dark_red
endif

" save current relative colors back to palette dictionary
let s:ka.bg0 = s:bg0
let s:ka.bg1 = s:bg1
let s:ka.bg2 = s:bg2
let s:ka.bg3 = s:bg3
let s:ka.bg4 = s:bg4

let s:ka.gray = s:gray

let s:ka.fg0 = s:fg0
let s:ka.fg1 = s:fg1
let s:ka.fg2 = s:fg2
let s:ka.fg3 = s:fg3
let s:ka.fg4 = s:fg4

let s:ka.red        = s:red
let s:ka.blue       = s:blue
let s:ka.blue       = s:blue
let s:ka.light_blue = s:light_blue
let s:ka.brown      = s:brown
let s:ka.beige      = s:beige

" }}}
" Setup Terminal Colors For Neovim: {{{

if has('nvim')
    let g:terminal_color_0 = s:bg0[0]
    let g:terminal_color_8 = s:bg3[0]

    let g:terminal_color_1 = s:red[0]
    let g:terminal_color_9 = s:red[0]

    let g:terminal_color_2 = s:light_blue[0]
    let g:terminal_color_10 = s:light_blue[0]

    let g:terminal_color_3 = s:beige[0]
    let g:terminal_color_11 = s:beige[0]

    let g:terminal_color_4 = s:blue[0]
    let g:terminal_color_12 = s:blue[0]

    let g:terminal_color_5 = s:brown[0]
    let g:terminal_color_13 = s:brown[0]

    let g:terminal_color_6 = s:bg4[0]
    let g:terminal_color_14 = s:bg4[0]

    let g:terminal_color_7 = s:fg4[0]
    let g:terminal_color_15 = s:fg1[0]

    let g:terminal_color_background = g:terminal_color_0
    let g:terminal_color_foreground = s:fg3[0]
endif

" }}}
" Overload Setting: {{{

let s:sign_column = s:bg1
let s:italicize_comments = s:italic

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui

    " foreground
    let fg = a:fg

    " background
    if a:0 >= 1
        let bg = a:1
    else
        let bg = s:none
    endif

    " emphasis
    if a:0 >= 2 && strlen(a:2)
        let emstr = a:2
    else
        let emstr = 'NONE,'
    endif

    let histring = [ 'hi', a:group,
                \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
                \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
                \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
                \ ]

    execute join(histring, ' ')
endfunction

" }}}
" Kamrat Hi Groups: {{{

" memoize common hi groups
call s:HL('KamratFg0', s:fg0)
call s:HL('KamratFg1', s:fg1)
call s:HL('KamratFg2', s:fg2)
call s:HL('KamratFg3', s:fg3)
call s:HL('KamratFg4', s:fg4)
call s:HL('KamratGray', s:gray)
call s:HL('KamratBg0', s:bg0)
call s:HL('KamratBg1', s:bg1)
call s:HL('KamratBg2', s:bg2)
call s:HL('KamratBg3', s:bg3)
call s:HL('KamratBg4', s:bg4)

call s:HL('KamratRed', s:red)
call s:HL('KamratRedDark', s:dark_red)

call s:HL('KamratBlue', s:blue)
call s:HL('KamratBlueLight', s:light_blue)

call s:HL('KamratBrown', s:brown)
call s:HL('KamratBeige', s:beige)

call s:HL('KamratOrange', s:orange)
call s:HL('KamratOrangeDark', s:dark_orange)

call s:HL('KamratRedBold', s:red, s:none, s:bold)
call s:HL('KamratBlueBold', s:blue, s:none, s:bold)
call s:HL('KamratBlueLightBold', s:light_blue, s:none, s:bold)
call s:HL('KamratBrownBold', s:brown, s:none, s:bold)
call s:HL('KamratBeigeBold', s:beige, s:none, s:bold)

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:fg3, s:bg0)

" Correct background (see issue #7):
" --- Problem with changing between dark and light on 256 color terminal
" --- https://github.com/morhetz/gruvbox/issues/7
if s:is_dark
    set background=dark
else
    set background=light
endif

if version >= 700
    " Screen line that the cursor is
    if &diff
        call s:HL('CursorLine', s:none, s:none, s:bold . s:underline)
    else
        call s:HL('CursorLine', s:none, s:bg1)
    endif
    " Screen column that the cursor is
    hi! link CursorColumn CursorLine

    " Tab pages line filler
    hi! link TabLineFill Normal
    " Active tab page label
    hi! link TabLineSel StatusLine
    " Not active tab page label
    hi! link TabLine StatusLineNC

    " Match paired bracket under the cursor
    call s:HL('MatchParen', s:none, s:bg2, s:underline)
endif

if version >= 703
    " Highlighted screen columns
    call s:HL('ColorColumn', s:none, s:bg1)

    " Concealed element: \lambda → λ
    call s:HL('Conceal', s:blue, s:none)

    " Line number of CursorLine
    call s:HL('CursorLineNr', s:fg2, s:bg1)
endif

hi! link NonText KamratBg3
hi! link SpecialKey KamratBg3

call s:HL('Visual', s:none, s:bg2)
hi! link VisualNOS Visual

call s:HL('Search', s:fg2, s:bg0, s:inverse)
call s:HL('IncSearch', s:fg1, s:bg0, s:inverse)

call s:HL('Underlined', s:none, s:none, s:underline)

call s:HL('StatusLine', s:bg3, s:fg2, s:inverse)
call s:HL('StatusLineNC', s:bg1, s:gray, s:inverse)

" The column separating vertically split windows
call s:HL('VertSplit', s:bg4, s:bg0)

" Current match in wildmenu completion
call s:HL('WildMenu', s:fg0, s:gray, s:bold)

" Directory names, special names in listing
hi! link Directory KamratBlue

" Titles for output from :set all, :autocmd, etc.
hi! link Title Normal

" Error messages on the command line
hi! link ErrorMsg KamratRed
" More prompt: -- More --
hi! link MoreMsg Normal
" Current mode message: -- INSERT --
hi! link ModeMsg Normal
" 'Press enter' prompt and yes/no questions
hi! link Question Normal
" Warning messages
hi! link WarningMsg KamratBeige

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:bg3)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:bg1, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:bg1)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input mode cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

" Any special symbol
hi! link Special KamratBlue

" Special character in constant
hi! link SpecialChar KamratBrown

" Special things inside a comment
hi! link SpecialComment Comment

" You can use CTRL-] on this
hi! link Tag Normal

" Character that needs attention
hi! link Delimiter Normal

" Debugging statements
hi! link Debug Normal

" Left blank, hidden
hi! link Ignore Normal

" Current quickfix item in the quickfix window
call s:HL("QuickFixLine", s:bg0, s:fg2)
" quickfix line nr
hi! link qfLineNr KamratGray

call s:HL('Comment', s:bg4, s:none, s:italicize_comments)
call s:HL('Todo', s:gray, s:bg0, s:bold . s:inverse)
call s:HL('Error', s:red, s:bg0, s:inverse)

" Generic statement
hi! link Statement KamratRed
" if, then, else, endif, swicth, etc.
hi! link Conditional KamratRed
" for, do, while, etc.
hi! link Repeat KamratRed
" case, default, etc.
hi! link Label KamratRed
" try, catch, throw
hi! link Exception KamratRed
" sizeof, "+", "*", etc.
hi! link Operator KamratBlueLight
" Any other keyword
hi! link Keyword KamratRed

" Variable name
hi! link Identifier KamratBlueLight
" Function name
hi! link Function KamratFg1

" Generic preprocessor
hi! link PreProc KamratFg1
" Preprocessor #include
hi! link Include KamratFg1
" Preprocessor #define
hi! link Define KamratFg1
" Same as Define
hi! link Macro KamratFg1
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit KamratFg1

" Generic constant
hi! link Constant KamratBlue
" Character constant: 'c', '/n'
hi! link Character KamratBrown
" String constant: "this is a string"
hi! link String KamratBeige
" Boolean constant: TRUE, false
hi! link Boolean KamratBlue
" Number constant: 234, 0xff
hi! link Number KamratBlue
" Floating point constant: 2.3e10
hi! link Float KamratBlue

" Generic type
hi! link Type KamratBlueLight
" static, register, volatile, etc
hi! link StorageClass KamratBlue
" struct, union, enum, etc.
hi! link Structure KamratBlue
" typedef
hi! link Typedef KamratBlueLight

" }}}
" Completion Menu: {{{

if version >= 700
    " Popup menu: normal item
    call s:HL('Pmenu', s:fg2, s:bg2)
    " Popup menu: selected item
    call s:HL('PmenuSel', s:bg0, s:light_blue)
    " Popup menu: scrollbar
    call s:HL('PmenuSbar', s:none, s:bg2)
    " Popup menu: scrollbar thumb
    call s:HL('PmenuThumb', s:none, s:bg4)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red,        s:bg0, s:inverse)
call s:HL('DiffAdd',    s:light_blue, s:bg0, s:inverse)
call s:HL('DiffChange', s:beige,      s:bg0, s:inverse)
call s:HL('DiffText',   s:brown,      s:fg0, s:inverse)

" }}}
" Spelling: {{{

if has("spell")
    " Not capitalised word, or compile warnings
    call s:HL('SpellCap',   s:beige, s:none, s:undercurl)
    " Not recognized word
    call s:HL('SpellBad',   s:red, s:none, s:undercurl)
    " Wrong spelling for selected region
    call s:HL('SpellLocal', s:brown, s:none, s:undercurl)
    " Rare word
    call s:HL('SpellRare',  s:brown, s:none, s:undercurl)
endif

" }}}

" Plugin specific -------------------------------------------------------------
" ALE: {{{

call s:HL("ALEErrorSign", s:dark_red, s:sign_column)
call s:HL("ALEWarningSign", s:orange, s:sign_column)
call s:HL("AleInfoSign", s:fg1, s:sign_column)

" }}}
" Neomake: {{{

hi! link NeomakeErrorSign ALEErrorSign
hi! link NeomakeWarningSign ALEWarningSign
hi! link NeomakeInfoSign ALEInfoSign

" }}}
" Signify: {{{

call s:HL("SignifySignAdd", s:light_blue, s:sign_column)
call s:HL("SignifySignChange", s:beige, s:sign_column)
call s:HL("SignifySignDelete", s:red, s:sign_column)

" }}}
" GitGutter: {{{

hi! link GitGutterAdd SignifySignAdd
hi! link GitGutterChange SignifySignChange
hi! link GitGutterDelete SignifySignDelete
call s:HL("GitGutterChangeDelete", s:brown, s:sign_column)

" }}}
" Signature: {{{

hi! link SignatureMarkText Comment

" }}}
" Startify: {{{

hi! link StartifyNumber KamratBeige

" }}}

" Filetype specific -----------------------------------------------------------
" Python: {{{

hi! link pythonStrFormat KamratBrown
hi! link pythonStrFormatting pythonStrFormat
hi! link pythonStrInterpRegion pythonStrFormat
hi! link pythonBytesEscape pythonStrFormat
hi! link pythonDecorator Operator

" }}}

" Shell: {{{

hi! link shDeref Normal
hi! link shCtrlSeq KamratBrown
hi! link shEscape KamratBrown
hi! link shSpecial KamratBrown

" }}}

" vim: set sw=4 ts=4 sts=4 et tw=80 ft=vim fdm=marker:
